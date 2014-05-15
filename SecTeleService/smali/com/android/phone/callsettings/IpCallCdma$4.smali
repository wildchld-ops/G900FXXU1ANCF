.class Lcom/android/phone/callsettings/IpCallCdma$4;
.super Ljava/lang/Object;
.source "IpCallCdma.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpCallCdma;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpCallCdma;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpCallCdma;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const v11, 0x7f040054

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->deleteIpNumber(I)V
    invoke-static {v4, v1}, Lcom/android/phone/callsettings/IpCallCdma;->access$500(Lcom/android/phone/callsettings/IpCallCdma;I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$700(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const-string v7, ""

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/android/phone/callsettings/IpCallCdma;->access$800(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$400(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$900(Lcom/android/phone/callsettings/IpCallCdma;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;
    invoke-static {v4, v6}, Lcom/android/phone/callsettings/IpCallCdma;->access$1000(Lcom/android/phone/callsettings/IpCallCdma;Z)Landroid/database/Cursor;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->showIpNumberList(Landroid/database/Cursor;)V
    invoke-static {v4, v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$1100(Lcom/android/phone/callsettings/IpCallCdma;Landroid/database/Cursor;)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v7, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v8, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v9, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v9}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v7, v8, v9, v11, v10}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v4, v7}, Lcom/android/phone/callsettings/IpCallCdma;->access$1202(Lcom/android/phone/callsettings/IpCallCdma;Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v7}, Lcom/android/phone/callsettings/IpCallCdma;->access$1200(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->createLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$1300(Lcom/android/phone/callsettings/IpCallCdma;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v8, 0x6

    if-ge v4, v8, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    move v4, v6

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->getIpNumberList(Z)Landroid/database/Cursor;
    invoke-static {v4, v6}, Lcom/android/phone/callsettings/IpCallCdma;->access$1000(Lcom/android/phone/callsettings/IpCallCdma;Z)Landroid/database/Cursor;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->showIpNumberList(Landroid/database/Cursor;)V
    invoke-static {v4, v0}, Lcom/android/phone/callsettings/IpCallCdma;->access$1100(Lcom/android/phone/callsettings/IpCallCdma;Landroid/database/Cursor;)V

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    new-instance v7, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v8, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v9, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    invoke-virtual {v9}, Lcom/android/phone/callsettings/IpCallCdma;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->ipCallList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/phone/callsettings/IpCallCdma;->access$600(Lcom/android/phone/callsettings/IpCallCdma;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v7, v8, v9, v11, v10}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;-><init>(Lcom/android/phone/callsettings/IpCallCdma;Landroid/content/Context;ILjava/util/ArrayList;)V

    #setter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v4, v7}, Lcom/android/phone/callsettings/IpCallCdma;->access$1202(Lcom/android/phone/callsettings/IpCallCdma;Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v7, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    const v8, 0x7f090375

    invoke-virtual {v7, v8}, Lcom/android/phone/callsettings/IpCallCdma;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->displayToast(Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/android/phone/callsettings/IpCallCdma;->access$1400(Lcom/android/phone/callsettings/IpCallCdma;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$1200(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;->notifyDataSetInvalidated()V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCallCdma;->selectAll:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCallCdma;->listView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mListAdapter:Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;
    invoke-static {v7}, Lcom/android/phone/callsettings/IpCallCdma;->access$1200(Lcom/android/phone/callsettings/IpCallCdma;)Lcom/android/phone/callsettings/IpCallCdma$IPCallAdapter;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #calls: Lcom/android/phone/callsettings/IpCallCdma;->updateIpNumberList()V
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$900(Lcom/android/phone/callsettings/IpCallCdma;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    #getter for: Lcom/android/phone/callsettings/IpCallCdma;->mState:I
    invoke-static {v4}, Lcom/android/phone/callsettings/IpCallCdma;->access$200(Lcom/android/phone/callsettings/IpCallCdma;)I

    move-result v4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCallCdma$4;->this$0:Lcom/android/phone/callsettings/IpCallCdma;

    iget-object v4, v4, Lcom/android/phone/callsettings/IpCallCdma;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2
.end method
