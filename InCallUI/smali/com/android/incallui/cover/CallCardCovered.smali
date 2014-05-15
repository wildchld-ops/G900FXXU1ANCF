.class public Lcom/android/incallui/cover/CallCardCovered;
.super Landroid/widget/FrameLayout;
.source "CallCardCovered.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# instance fields
.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

.field private mCallTimeForEndScreen:Landroid/widget/TextView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpTextLine1:Landroid/widget/TextView;

.field private mHelpTextLine4:Landroid/widget/TextView;

.field private mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mIncomingcallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mShowingCallEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mShowingCallEnd:Z

    new-instance v0, Lcom/android/incallui/cover/CallCardCovered$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/cover/CallCardCovered$1;-><init>(Lcom/android/incallui/cover/CallCardCovered;)V

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/cover/CallCardCovered;->mContext:Landroid/content/Context;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CallCardCovered"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CallCardCovered"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallCard onFinishInflate(this = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->log(Ljava/lang/String;)V

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mCallStateLabelLinearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mCallStateLabel:Landroid/widget/TextView;

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mName:Landroid/widget/TextView;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mHelpTextLine1:Landroid/widget/TextView;

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mCallTimeForEndScreen:Landroid/widget/TextView;

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mHelpTextLine4:Landroid/widget/TextView;

    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/android/incallui/cover/CallCardCovered;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v10, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->enableArrowAnimation(IZ)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/cover/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c014e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p0}, Lcom/android/incallui/cover/CallCardCovered;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c014f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addTouchArea(IIIII)V

    iget-object v4, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    move v5, v10

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->addTouchArea(IIIII)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const v4, 0x7f02020d

    invoke-virtual {v0, v1, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setHandleImageResource(II)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const v4, 0x7f02020a

    invoke-virtual {v0, v10, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setHandleImageResource(II)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(II)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setTouchVibationMode(Z)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const-wide v3, 0x3ff2666666666666L

    invoke-virtual {v0, v3, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setReachedRatio(D)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v11}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialTrigger(whichHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CallCardCovered;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/cover/CallCardCovered;->mIncomingcallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "LEFT_HANDLE: answer!"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    const-string v0, "RIGHT_HANDLE: reject!"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const-string v0, "LEFT_HANDLE: toggle speaker"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    const-string v0, "RIGHT_HANDLE: endCall"

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/cover/CallCardCovered;->log(Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
