.class Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->addSelectAllHeaderView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v2, v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #calls: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setSelectAllChecked(Z)V
    invoke-static {v2, v1}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$700(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Z)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    iget-object v3, v3, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelection:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
    invoke-static {v4}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$400(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    move v0, v1

    :cond_0
    #calls: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->updateSelectAllState(Z)V
    invoke-static {v2, v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$800(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Z)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #calls: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->updateSelectionMenu()V
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$900(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)V

    invoke-static {}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$1000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #getter for: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$1100(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity$2;->this$0:Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    #calls: Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->setSelectAllChecked(Z)V
    invoke-static {v2, v0}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->access$700(Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;Z)V

    goto :goto_0
.end method
