.class Lcom/android/dialer/calllog/CallLogAdapter$7;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


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

.field final synthetic val$views:Lcom/android/dialer/calllog/CallLogListItemViews;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;
    .locals 9

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "CallLogAdapter"

    const-string v7, "calllog makeHoverText"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/android/dialer/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/android/dialer/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/android/dialer/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v6, v6, Lcom/android/dialer/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v2, :cond_4

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz v3, :cond_8

    if-eqz v2, :cond_7

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    const/16 v8, 0x21

    invoke-interface {v4, v6, v7, v0, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-object v1

    :cond_7
    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v4, "CallLogAdapter"

    const-string v5, "hoverLinearLayout == null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    const v4, 0x7f08023f

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_1

    const-string v4, "CallLogAdapter"

    const-string v5, "hoverTextView == null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p1}, Lcom/android/dialer/calllog/CallLogAdapter$7;->makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    const-string v4, "CallLogAdapter"

    const-string v5, "mHoverListener delete popup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v4, v4, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v4, v4, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_3
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter$7;->val$views:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v4, v4, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_0
.end method
