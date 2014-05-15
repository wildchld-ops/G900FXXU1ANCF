.class Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;
.super Ljava/lang/Object;
.source "DialpadSearchViewUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;

.field final synthetic val$nameView:Landroid/widget/TextView;

.field final synthetic val$numberView:Landroid/widget/TextView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->this$1:Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter;

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$nameView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$numberView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$nameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$nameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$nameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$numberView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$numberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$numberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$numberView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$numberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$nameView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$nameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setHoverPopup"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(I)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/16 v1, 0x3031

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v1, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$nameView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchViewUpdater$SearchListAdapter$1;->val$numberView:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    :cond_4
    return-void
.end method
