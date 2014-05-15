.class Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;
.super Ljava/lang/Object;
.source "CallDetailHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "CallDetailHistoryAdapter"

    const-string v3, " === mListViewOnClickListener in CallDetailHistoryAdapter === "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f08007e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->toggle()V

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    invoke-virtual {v2}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->isPositionChecked(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->addSelectedLog(IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$2;->this$0:Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    #getter for: Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->access$100(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dialer/calllog/CallDetailDeleteActivity;->removeLog(I)V

    goto :goto_0
.end method
