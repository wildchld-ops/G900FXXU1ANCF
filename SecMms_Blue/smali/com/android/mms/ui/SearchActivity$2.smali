.class Lcom/android/mms/ui/SearchActivity$2;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12

    const-string v7, "Mms/SearchActivity"

    const-string v8, "onQueryComplete"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/mms/data/Conversation;->conversationInfoOneBubbleCursor(Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->getSpinnerItem()I

    move-result v0

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getCount()I

    move-result v8

    #setter for: Lcom/android/mms/ui/SearchActivity;->mThreadCount:I
    invoke-static {v7, v8}, Lcom/android/mms/ui/SearchActivity;->access$102(Lcom/android/mms/ui/SearchActivity;I)I

    :cond_0
    if-eqz p3, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    #setter for: Lcom/android/mms/ui/SearchActivity;->mBubbleCount:I
    invoke-static {v7, v8}, Lcom/android/mms/ui/SearchActivity;->access$202(Lcom/android/mms/ui/SearchActivity;I)I

    :cond_1
    if-nez v0, :cond_7

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    #calls: Lcom/android/mms/ui/SearchActivity;->getTotalCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v7, v5, p3}, Lcom/android/mms/ui/SearchActivity;->access$300(Lcom/android/mms/ui/SearchActivity;Landroid/database/MatrixCursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    const/4 v5, 0x0

    :cond_3
    const/4 v1, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    :cond_4
    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v8, -0x1

    iput v8, v7, Lcom/android/mms/ui/SearchActivity;->mThreadStartIdx:I

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v8, -0x1

    iput v8, v7, Lcom/android/mms/ui/SearchActivity;->mBubbleStartIdx:I

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    #calls: Lcom/android/mms/ui/SearchActivity;->setSeparatorInfo(Landroid/database/Cursor;)V
    invoke-static {v7, v6}, Lcom/android/mms/ui/SearchActivity;->access$400(Lcom/android/mms/ui/SearchActivity;Landroid/database/Cursor;)V

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v7, v7, Lcom/android/mms/ui/SearchActivity;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7, v6}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->mHandler2:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v7, v7, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->isInTouchMode()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v7, v7, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v7, v7, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MessageListView;->setFocusableInTouchMode(Z)V

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v7, v7, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->requestFocus()Z

    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v7, v7, Lcom/android/mms/ui/SearchActivity;->mListView:Lcom/android/mms/ui/MessageListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-lez v1, :cond_b

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/android/mms/MmsApp;

    invoke-virtual {v7}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v8, 0x7f0c00d7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    const/4 v7, 0x1

    if-ne v0, v7, :cond_9

    if-eqz p3, :cond_8

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 p3, 0x0

    new-instance v6, Landroid/database/MergeCursor;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    invoke-direct {v6, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_9
    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/database/MatrixCursor;->close()V

    :cond_a
    const/4 v5, 0x0

    new-instance v6, Landroid/database/MergeCursor;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-direct {v6, v7}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v2, v7

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
