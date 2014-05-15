.class Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;
.super Lcom/sec/android/app/sbrowser/common/SBrowserEventBroadcaster$SBrowserEventHandler;
.source "HistoryPhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->initExpandList(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

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
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->setNoHistoryLayoutIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->buildMap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->updateRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->updateRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->updateRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    #getter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpandList:Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->access$000(Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;)Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->invalidateViews()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->notifyChange()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$1;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    #calls: Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->clearAndGetHistory()V
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->access$100(Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;)V

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
