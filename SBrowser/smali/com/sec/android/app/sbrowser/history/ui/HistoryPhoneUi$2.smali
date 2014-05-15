.class Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;
.super Ljava/lang/Object;
.source "HistoryPhoneUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->toggle()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllChecked:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllChecked:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllChecked:Z

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget v3, v3, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryListSize:I

    iput v3, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSlectedItemCount:I

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->updateActionModeTextview()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsDeleteMode:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->setEnableOrDisableDoneButton()V

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mExpAdapter:Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ExpandListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryDataToDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectAllChecked:Z

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/history/model/HistoryModel$HistoryData;->mIsChecked:Z

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    const/4 v3, 0x0

    iput v3, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSlectedItemCount:I

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v2, v2, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsShowingActionMode:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$2;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->setListItems()V

    goto :goto_3
.end method
