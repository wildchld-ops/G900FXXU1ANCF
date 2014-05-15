.class Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;
.super Ljava/lang/Object;
.source "HistoryBaseUi.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryDeleteActionModeCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v3, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v2, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-wide v0, v4, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mVisitTime:J

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    return v9

    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    #setter for: Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mNotificcatioHistoryUpdateSent:Z
    invoke-static {v4, v9}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->access$102(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;Z)Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget v4, v4, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget v5, v5, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->promptToClearHistory()V

    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    #calls: Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->prepareUrlsFromSelectedItemsforDelete()Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->access$200(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v1}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->deleteHistoryURL(Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v5, v5, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0330

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget v7, v7, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0a031a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iput-boolean v6, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsDeleteMode:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getHistoryDataResult()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iput v4, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iput v4, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mUiController:Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/history/controller/HistoryUiController;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f040024

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack$1;-><init>(Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    const v4, 0x7f0a0103

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeTextview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->updateActionModeTextview()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->setEnableOrDisableDoneButton()V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e0014

    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iput-object p2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteActionModeMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iput-object p1, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mDeleteActionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    return v6
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iput-boolean v4, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mIsDeleteMode:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iput v4, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSlectedItemCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mActionModeTextview:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryListSize:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi$HistoryDeleteActionModeCallBack;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
