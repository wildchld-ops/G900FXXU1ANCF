.class Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "HistoryXlargeUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->initExpandList(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->setNoHistoryLayoutIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$000(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->buildMap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$100(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$000(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mGroupListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$100(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/HistoryLeftPaneListAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->updateChildList(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListAdapter:Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$000(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/history/HistoryRightPaneListAdapter;->getSelectedGroup()I

    move-result v1

    #calls: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->setTitle(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$200(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->mChildListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$300(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->notifyChange()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;

    #calls: Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->clearAndGetHistory()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;->access$400(Lcom/sec/android/app/sbrowser/history/ui/HistoryXlargeUi;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x1b -> :sswitch_1
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x23 -> :sswitch_3
    .end sparse-switch
.end method
