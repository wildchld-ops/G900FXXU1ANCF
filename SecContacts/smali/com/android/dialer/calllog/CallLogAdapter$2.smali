.class Lcom/android/dialer/calllog/CallLogAdapter$2;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    const/4 v6, 0x1

    const-string v5, "CallLogAdapter"

    const-string v7, "========= onLongClick ========="

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "0012"

    invoke-static {v5, v7}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/calllog/CallLogFragment;->startActionMode()V

    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;

    move-result-object v5

    iget-object v5, v5, Lcom/android/dialer/calllog/CallLogListItemViews;->groupCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;

    move-result-object v5

    iget-object v5, v5, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "CallLogAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCountStr : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v2, v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v5, "CallLogAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mActionModeCallback : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v5, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    sget-object v5, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v5, v4, v2}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->toggleSelection(II)V

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    return v5

    :cond_2
    const-string v5, "CallLogAdapter"

    const-string v7, "ListView is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "CallLogAdapter"

    const-string v7, "NullPointerException in onLongClick"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method
