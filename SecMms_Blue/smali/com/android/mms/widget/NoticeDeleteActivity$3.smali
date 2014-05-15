.class Lcom/android/mms/widget/NoticeDeleteActivity$3;
.super Ljava/lang/Object;
.source "NoticeDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/widget/NoticeDeleteActivity;->processPriorityDoneButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/widget/NoticeDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getItem(I)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeDeleteList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$200(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeConversationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$300(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #calls: Lcom/android/mms/widget/NoticeDeleteActivity;->updatePriorityNoticeList()V
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$500(Lcom/android/mms/widget/NoticeDeleteActivity;)V

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-virtual {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;Z)V

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mCheckedList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$000(Lcom/android/mms/widget/NoticeDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-virtual {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->invalidateOptionsMenu()V

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    #getter for: Lcom/android/mms/widget/NoticeDeleteActivity;->mNoticeWidgetAdapter:Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;
    invoke-static {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->access$100(Lcom/android/mms/widget/NoticeDeleteActivity;)Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$3;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-virtual {v4}, Lcom/android/mms/widget/NoticeDeleteActivity;->finish()V

    :cond_2
    return-void
.end method
