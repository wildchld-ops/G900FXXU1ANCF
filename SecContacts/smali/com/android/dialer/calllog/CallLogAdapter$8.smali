.class Lcom/android/dialer/calllog/CallLogAdapter$8;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;

.field final synthetic val$mHoverListListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field final synthetic val$views:Lcom/android/dialer/calllog/CallLogListItemViews;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViews;Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$mHoverListListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CallLogAdapter"

    const-string v1, "run()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    #getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CallLogAdapter"

    const-string v1, "setHoverPopupListener()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "CallLogAdapter"

    const-string v1, "setHoverPopup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/16 v1, 0x3031

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$8;->val$mHoverListListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    :cond_2
    return-void
.end method
