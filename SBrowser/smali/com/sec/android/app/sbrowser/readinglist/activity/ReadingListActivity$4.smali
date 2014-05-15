.class Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;
.super Ljava/lang/Object;
.source "ReadingListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mPosition:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getChecked()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mDeleteIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1300(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1504(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->setCount(I)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSelectdelete:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItemsForDelete()V
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1800(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    new-instance v3, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4$1;-><init>(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c032f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActionModeTextview:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$2000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSlectedItemCount:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1500(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSavedPagesList:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingDataToDeleteList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1400(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mBackupReadingListDataForUndo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$700(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListSpinnerAdapter:Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1600(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1506(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/readinglist/controller/ReadingListSpinnerAdapter;->setCount(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #calls: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setListItems()V
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1900(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)V

    goto/16 :goto_2

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1200(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mIsShowingActionMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mReadingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getIsReaderPage()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    #getter for: Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->access$1000(Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/reader/ui/ReaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "isFromReadingList"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "SBrowserMainActivityContextId"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "savePageUrl"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "savePageTitle"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "savePageStoragePath"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const/16 v3, 0x21

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "savePageStoragePath"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "savePageUrl"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "savePageTitle"

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity$4;->this$0:Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/readinglist/activity/ReadingListActivity;->finish()V

    goto/16 :goto_0
.end method
