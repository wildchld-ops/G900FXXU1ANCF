.class public Lcom/android/mms/hover/ListHoverController;
.super Ljava/lang/Object;
.source "ListHoverController.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;
    }
.end annotation


# static fields
.field public static final LIST_HOVER_TYPE_FROM_AND_SUBJECT:I = 0x0

.field public static final LIST_HOVER_TYPE_TEXTVIEW_IDS:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListHoverType:I

.field private mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

.field private mTextViewIds:[I

.field private mUseCustomHoverPopupSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/hover/ListHoverController;->mUseCustomHoverPopupSize:Z

    iput-object p1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private makeHoverText(Landroid/view/View;[I)Ljava/lang/StringBuffer;
    .locals 7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_2

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;
    .locals 9

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const v5, 0x7f0b001c

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f0b0033

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v2, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->isEllipsis()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setDefaultHoverPopupStyle(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->setHoverPopupType(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f04005f

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(I)V

    const/16 v1, 0x3031

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    goto :goto_0
.end method

.method private setHoverTextWidth(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 7

    const/4 v6, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const v5, 0x7f0b01d8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    if-eqz v3, :cond_6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/mms/hover/ListHoverController;->mUseCustomHoverPopupSize:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/android/mms/hover/ListHoverController;->setHoverTextWidth(Landroid/widget/TextView;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    if-nez v3, :cond_9

    invoke-direct {p0, v2, p1}, Lcom/android/mms/hover/ListHoverController;->makeHoverText(Landroid/widget/TextView;Landroid/view/View;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    invoke-interface {v3, p1}, Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;->doTask(Landroid/view/View;)V

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    iget v3, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mms/hover/ListHoverController;->mTextViewIds:[I

    invoke-direct {p0, p1, v3}, Lcom/android/mms/hover/ListHoverController;->makeHoverText(Landroid/view/View;[I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setHoverPopupStyle(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    invoke-direct {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    const v3, 0x7f0b001c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    :cond_2
    const v3, 0x7f0b0033

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setHoverPopupStyle(Landroid/view/View;[I)V
    .locals 8

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v7, p0, Lcom/android/mms/hover/ListHoverController;->mListHoverType:I

    invoke-direct {p0, p1}, Lcom/android/mms/hover/ListHoverController;->setDefaultHoverPopupStyle(Landroid/view/View;)V

    move-object v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    iput-object v6, p0, Lcom/android/mms/hover/ListHoverController;->mTextViewIds:[I

    goto :goto_0
.end method

.method public setPostTask(Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/hover/ListHoverController;->mPostTask:Lcom/android/mms/hover/ListHoverController$PostTaskCallBack;

    return-void
.end method

.method public setUseCustomHoverPopupSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/hover/ListHoverController;->mUseCustomHoverPopupSize:Z

    return-void
.end method
