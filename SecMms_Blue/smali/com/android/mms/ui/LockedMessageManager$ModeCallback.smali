.class Lcom/android/mms/ui/LockedMessageManager$ModeCallback;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mOptionMenu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/LockedMessageManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;-><init>(Lcom/android/mms/ui/LockedMessageManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/LockedMessageManager$ModeCallback;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v9

    :goto_0
    return v1

    :cond_1
    if-eqz v3, :cond_2

    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    const v1, 0x7f0b031d

    if-eq v8, v1, :cond_3

    const v1, 0x7f0b0322

    if-ne v8, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->deleteSelectedMessages()V
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2600(Lcom/android/mms/ui/LockedMessageManager;)V

    move v1, v10

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_6

    :cond_5
    move v1, v9

    goto :goto_0

    :cond_6
    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v1, v10

    goto :goto_0

    :sswitch_0
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v4, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    #calls: Lcom/android/mms/ui/LockedMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/mms/ui/LockedMessageManager;->access$2700(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/util/UIUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    iput-boolean v10, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    invoke-virtual {v0, v9, v3}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    iput-boolean v9, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->unlockSelectedMessages()V
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2800(Lcom/android/mms/ui/LockedMessageManager;)V

    goto :goto_1

    :sswitch_3
    iget-object v1, v3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-wide v4, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v0, v1, v10, v4, v5}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    if-nez v7, :cond_a

    move v1, v9

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0, v3, v7}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;)V

    :cond_b
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    :sswitch_5
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    invoke-static {v1, v4, v5, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    if-nez v7, :cond_c

    move v1, v9

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v3, v7, v9}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    :sswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mms/util/TelephonyUtils;->connectSpecificTidService(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0331 -> :sswitch_1
        0x7f0b0333 -> :sswitch_2
        0x7f0b0339 -> :sswitch_5
        0x7f0b0341 -> :sswitch_0
        0x7f0b0342 -> :sswitch_3
        0x7f0b0343 -> :sswitch_4
        0x7f0b0344 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$1500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "Message does not default App so Do not enable multi select mode(delete, spam, save message..."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2900(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->twSetCustomMultiChoiceMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/LockedMessageManager;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2302(Lcom/android/mms/ui/LockedMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x7f04

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v4, 0x7f0b0009

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v3, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2402(Lcom/android/mms/ui/LockedMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateSelectionMenu()V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->setMessageListMode(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/mms/ui/LockedMessageManager;->access$1802(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Lcom/android/mms/ui/LockedMessageManager$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback$1;-><init>(Lcom/android/mms/ui/LockedMessageManager$ModeCallback;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    #calls: Lcom/android/mms/ui/LockedMessageManager;->disableSweepHanlder(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v1, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$3000(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V

    move v1, v2

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2300(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2302(Lcom/android/mms/ui/LockedMessageManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mDeleteActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1802(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAll:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2900(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/LockedMessageListAdapter;->setMessageListMode(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    #calls: Lcom/android/mms/ui/LockedMessageManager;->setSweepHandler(Lcom/android/mms/ui/MsgSweepActionListView;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$3100(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MsgSweepActionListView;)V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$3200(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v0, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$3202(Lcom/android/mms/ui/LockedMessageManager;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2500(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0, v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2502(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageManager;->updateActionBarTitle()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 11

    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    if-gez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v9, "transport_type"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v9, "_id"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v0, v6

    const-string v9, "mms"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    neg-long v0, v6

    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lcom/android/mms/ui/LockedMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$2300(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v7, v8, v10}, Lcom/android/mms/ui/LockedMessageListAdapter;->setCheckedItem(JLjava/lang/String;Z)Z

    :goto_2
    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mIsSelectAllmode:Z
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$3700(Lcom/android/mms/ui/LockedMessageManager;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mIsLastItemOfSelectAll:Z
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$3800(Lcom/android/mms/ui/LockedMessageManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v10, 0x0

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mIsLastItemOfSelectAll:Z
    invoke-static {v9, v10}, Lcom/android/mms/ui/LockedMessageManager;->access$3802(Lcom/android/mms/ui/LockedMessageManager;Z)Z

    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v10, 0x0

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mIsSelectAllmode:Z
    invoke-static {v9, v10}, Lcom/android/mms/ui/LockedMessageManager;->access$3702(Lcom/android/mms/ui/LockedMessageManager;Z)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->updateSelectionMenu()V

    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/LockedMessageListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v9, "colsMap"

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$2300(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v9}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v7, v8, v10}, Lcom/android/mms/ui/LockedMessageListAdapter;->setCheckedItem(JLjava/lang/String;Z)Z

    goto :goto_2
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0b0322

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$1500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0b0009

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2402(Lcom/android/mms/ui/LockedMessageManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    :cond_0
    iput-object p2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->mOptionMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2300(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->disableAllMenu(Landroid/view/Menu;)V
    invoke-static {v1, p2}, Lcom/android/mms/ui/LockedMessageManager;->access$3300(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$3200(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    return v4

    :cond_2
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2300(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$3200(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->updateMultiActionMenu(Landroid/view/Menu;)V
    invoke-static {v1, p2}, Lcom/android/mms/ui/LockedMessageManager;->access$3400(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2300(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/LockedMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/LockedMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/LockedMessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListMultiMode:I
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$3200(Lcom/android/mms/ui/LockedMessageManager;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->getMessagItem()Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/LockedMessageManager;->access$3500(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1, v0}, Lcom/android/mms/ui/LockedMessageManager;->access$2502(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->enableSelecteMenu(Landroid/view/Menu;)V
    invoke-static {v1, p2}, Lcom/android/mms/ui/LockedMessageManager;->access$3600(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->enableSelecteMenu(Landroid/view/Menu;)V
    invoke-static {v1, p2}, Lcom/android/mms/ui/LockedMessageManager;->access$3600(Lcom/android/mms/ui/LockedMessageManager;Landroid/view/Menu;)V

    goto :goto_0

    :cond_6
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public updateSelectionMenu()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "updateSelectionMenu"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mCheckedMsgIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2300(Lcom/android/mms/ui/LockedMessageManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$1500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0467

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mActionbarTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$2400(Lcom/android/mms/ui/LockedMessageManager;)Landroid/widget/TextView;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v3}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/LockedMessageManager$ModeCallback;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$300(Lcom/android/mms/ui/LockedMessageManager;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
