.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const v8, 0x7f0c032f

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-boolean v6, v6, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getChecked()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1504(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->setCount(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItemsForDelete()V
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1800(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v7, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->notifyDataSetChanged()V

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    move v4, v5

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItems()V
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1900(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1506(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->setCount(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItemsForDelete()V
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1800(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    :goto_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v7, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5$2;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I
    invoke-static {v9}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItems()V
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1900(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    goto :goto_4

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #setter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I
    invoke-static {v6, v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1502(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;I)I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mPosition:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mUndoBarController:Lcom/sec/android/app/sbrowser/common/UndoBarController;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/UndoBarController;->isUndoBarShown()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDatas:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2100(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    goto :goto_6

    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListDataForDelete:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v7, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5$3;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iput p3, v6, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeletePosition:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_8
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move v4, v5

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$5;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_8
.end method
