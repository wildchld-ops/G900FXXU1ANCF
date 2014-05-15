.class Lcom/android/dialer/calllog/CallLogFragment$11;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->addSelectAllHeaderView(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mMultiSelectEnabled:Z
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1800(Lcom/android/dialer/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->selectAll()V

    :goto_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment;->mSelectedGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;
    invoke-static {v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogAdapter;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    #calls: Lcom/android/dialer/calllog/CallLogFragment;->updateSelectAllState(Z)V
    invoke-static {v2, v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$1100(Lcom/android/dialer/calllog/CallLogFragment;Z)V

    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->updateSelectionMenu()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$11;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    #getter for: Lcom/android/dialer/calllog/CallLogFragment;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$2900(Lcom/android/dialer/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->deselectAll()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
