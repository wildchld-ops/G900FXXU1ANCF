.class Lcom/android/dialer/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const-string v5, "CallLogAdapter"

    const-string v6, "========= onClick ========="

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-boolean v5, v5, Lcom/android/dialer/calllog/CallLogAdapter;->fragment_state:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;

    move-result-object v5

    iget-object v5, v5, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "CallLogAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Emergency mode selected number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v2

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/dialer/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dialer/calllog/CallLogFragment;->getSelectionMode()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "0014"

    invoke-static {v5, v6}, Lcom/android/contacts/ContactsUtils;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/calllog/IntentProvider;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/dialer/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v5, "CallLogAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mActionModeCallback : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;

    move-result-object v5

    iget-object v5, v5, Lcom/android/dialer/calllog/CallLogListItemViews;->groupCount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;

    move-result-object v5

    iget-object v5, v5, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "CallLogAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCountStr : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v3, v8, :cond_3

    const/4 v3, 0x1

    :cond_3
    sget-object v5, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f08007e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_4
    sget-object v5, Lcom/android/dialer/calllog/CallLogFragment;->mActionModeCallback:Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;

    invoke-static {}, Lcom/android/dialer/calllog/CallLogAdapter;->access$100()Lcom/android/dialer/calllog/CallLogFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/dialer/calllog/CallLogFragment$ActionModeCallback;->toggleSelection(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "CallLogAdapter"

    const-string v6, "NullPointerException in onClick"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v5, v5, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    check-cast v5, Lcom/samsung/dialer/interaction/InteractionRecentFragment;

    invoke-virtual {v5, p1}, Lcom/samsung/dialer/interaction/InteractionRecentFragment;->selectedlog(Landroid/view/View;)V

    goto/16 :goto_0
.end method
