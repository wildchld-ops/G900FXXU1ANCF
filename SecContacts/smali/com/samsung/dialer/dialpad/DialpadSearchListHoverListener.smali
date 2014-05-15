.class public Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;
.super Ljava/lang/Object;
.source "DialpadSearchListHoverListener.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHoverView:Landroid/view/View;

.field private mNameView:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mHoverView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mNameView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mNumberView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;
    .locals 9

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->TAG:Ljava/lang/String;

    const-string v7, "makeHoverText"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mNameView:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mNameView:Landroid/widget/TextView;

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
    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mNumberView:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mNumberView:Landroid/widget/TextView;

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
    sget-object v6, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNameEllipsised = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / isNumberEllipsised = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

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

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const v4, 0x7f08023f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {p0, v2, v4}, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    sget-object v4, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->TAG:Ljava/lang/String;

    const-string v5, "mHoverListener delete popup"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_3
    iget-object v4, p0, Lcom/samsung/dialer/dialpad/DialpadSearchListHoverListener;->mHoverView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_0
.end method
