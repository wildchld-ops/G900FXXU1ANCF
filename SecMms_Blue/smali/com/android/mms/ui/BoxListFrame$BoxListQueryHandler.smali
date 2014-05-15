.class Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BoxListFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BoxListQueryHandler"
.end annotation


# instance fields
.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/BoxListFrame;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 9

    const/16 v7, 0x66

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListAdapter;->clearCheckedList()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$4000(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler$1;-><init>(Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;J)V

    const-wide/16 v7, 0x32

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mDeletedThreadIds:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$4000(Lcom/android/mms/ui/BoxListFrame;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListFrame;->finishMultiSelectMode()V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->setListTitle()V
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$3900(Lcom/android/mms/ui/BoxListFrame;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onDeleteComplete(),DELETE_ALL_BOX_TOKEN"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v5}, Lcom/android/mms/ui/BoxListFrame;->finishMultiSelectMode()V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->setListTitle()V
    invoke-static {v5}, Lcom/android/mms/ui/BoxListFrame;->access$3900(Lcom/android/mms/ui/BoxListFrame;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #calls: Lcom/android/mms/ui/BoxListFrame;->afterResult(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->access$3000(Lcom/android/mms/ui/BoxListFrame;I)V

    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onQueryComplete] END : token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/BoxListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mIsDeleteMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$700(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mMsgToDelete:Lcom/android/mms/ui/BoxListAdapter$MessageData;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->refreshCheckedList()V
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3100(Lcom/android/mms/ui/BoxListFrame;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->isFirstItemChanged()Z
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3200(Lcom/android/mms/ui/BoxListFrame;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    :cond_3
    :goto_1
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete called with unknown token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewByMessageType()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-boolean v1, v1, Lcom/android/mms/ui/BoxListFrame;->mIsViewByMode:Z

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0330

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mVisiblePosition:I
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3300(Lcom/android/mms/ui/BoxListFrame;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->restoreListOffset()V
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3400(Lcom/android/mms/ui/BoxListFrame;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-wide/16 v2, 0xc8

    #calls: Lcom/android/mms/ui/BoxListFrame;->startAsyncQueryDelayed(J)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$3500(Lcom/android/mms/ui/BoxListFrame;J)V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4}, Lcom/android/mms/ui/BoxListFrame;->access$3602(Z)Z

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListAdapter:Lcom/android/mms/ui/BoxListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->invokeStartViewerNewMsg(Landroid/database/Cursor;)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->access$3700(Lcom/android/mms/ui/BoxListFrame;Landroid/database/Cursor;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/BoxListFrame;->access$2700(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$3802(Lcom/android/mms/ui/BoxListFrame;J)J

    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListViewActivity;->clearFocusOfBoxListIfNeeded()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$1300(Lcom/android/mms/ui/BoxListFrame;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->setListTitle()V
    invoke-static {v1}, Lcom/android/mms/ui/BoxListFrame;->access$3900(Lcom/android/mms/ui/BoxListFrame;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->this$0:Lcom/android/mms/ui/BoxListFrame;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/mms/ui/BoxListFrame;->mFirstItemId:J
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/BoxListFrame;->access$3802(Lcom/android/mms/ui/BoxListFrame;J)J

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$BoxListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    return-void
.end method
