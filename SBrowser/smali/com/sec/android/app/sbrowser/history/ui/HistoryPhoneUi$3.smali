.class Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsDeleteMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedItemCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mSelectedPosition:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsDeleteMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->handleSelectedItemForDeleteMode()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi$3;->this$0:Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/history/ui/HistoryPhoneUi;->handleSelectedItemForActionMode()V

    goto :goto_0
.end method
