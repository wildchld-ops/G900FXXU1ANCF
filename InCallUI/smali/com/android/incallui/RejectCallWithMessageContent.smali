.class public Lcom/android/incallui/RejectCallWithMessageContent;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;,
        Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;,
        Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;,
        Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;
    }
.end annotation


# instance fields
.field private RingingCallnumber:Ljava/lang/String;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCreageMessageIcon:Landroid/widget/ImageView;

.field private mCreageMessageText:Landroid/widget/TextView;

.field private mCreateMessage:Landroid/widget/LinearLayout;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

.field protected mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

.field private mRejectCallWithMessageItemList:Landroid/widget/ListView;

.field private mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040055

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/RejectCallWithMessageContent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureRejectCallWithMessageSlidingDrawer : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;

    iget-object v6, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    const v7, 0x7f040058

    invoke-direct {v3, p0, v6, v7, p1}, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    new-instance v6, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;

    invoke-direct {v6, p0}, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f0801f6

    invoke-virtual {p0, v3}, Lcom/android/incallui/RejectCallWithMessageContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    const v3, 0x7f0801f5

    invoke-virtual {p0, v3}, Lcom/android/incallui/RejectCallWithMessageContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    const v6, 0x7f0202ea

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_c

    move v1, v4

    :cond_6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasActiveCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_a
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreageMessageIcon:Landroid/widget/ImageView;

    const v6, 0x7f0202e9

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_c
    move v1, v5

    goto :goto_1

    :cond_d
    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 6

    const v5, 0x7f0801f4

    const v4, 0x7f0801f2

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/incallui/RejectCallWithMessageContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectCallWithMessageContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoImg:Landroid/widget/ImageView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/incallui/RejectCallWithMessageContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setNextFocusDownId(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setNextFocusUpId(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectCallWithMessageContent$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectCallWithMessageContent$1;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectCallWithMessageContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mRejectCallWithMessageItemList:Landroid/widget/ListView;

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectCallWithMessageContent$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectCallWithMessageContent$2;-><init>(Lcom/android/incallui/RejectCallWithMessageContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->checkMUMCaseForIncoming()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mCreateMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

    return-void
.end method
