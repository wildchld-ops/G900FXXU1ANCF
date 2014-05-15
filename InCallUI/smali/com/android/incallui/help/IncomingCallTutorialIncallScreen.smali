.class public Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;
.super Landroid/app/Activity;
.source "IncomingCallTutorialIncallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$6;,
        Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;
    }
.end annotation


# instance fields
.field private answer_passed:Z

.field private endbutton_clicked:Z

.field private mAddButton:Landroid/widget/Button;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mEndButton:Landroid/widget/Button;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mInCallControls:Landroid/view/View;

.field private mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mRecordButton:Landroid/widget/Button;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectHandle:Landroid/widget/LinearLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTipAccept:Landroid/widget/FrameLayout;

.field private mTipComplete:Landroid/widget/FrameLayout;

.field private mTipEndCall:Landroid/widget/FrameLayout;

.field private mTipReject:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/FrameLayout;

.field private reject_passed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->answer_passed:Z

    iput-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->reject_passed:Z

    iput-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    iput v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleCount:I

    new-instance v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$1;-><init>(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$2;-><init>(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$3;-><init>(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$4;-><init>(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->showToast()V

    return-void
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4

    const v3, 0x7f050002

    const v0, 0x7f05000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private initIncomingTutorial()V
    .locals 2

    const v1, 0x7f08000f

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    const-string v0, "change_message_icon_for_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0202ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipEndCall:Landroid/widget/FrameLayout;

    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipReject:Landroid/widget/FrameLayout;

    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipComplete:Landroid/widget/FrameLayout;

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRejectHandle:Landroid/widget/LinearLayout;

    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mInCallControls:Landroid/view/View;

    const v0, 0x7f080258

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTutorialLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$5;-><init>(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_1
    const-string v0, "change_message_icon_for_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v1, 0x7f0202ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "IncomingCallTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIncomingCallTutorialMode() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$6;->$SwitchMap$com$android$incallui$help$IncomingCallTutorialIncallScreen$IncomingCallTutorialStep:[I

    invoke-virtual {p1}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v4}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mInCallControls:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipEndCall:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipReject:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRejectHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mHelpTabView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipReject:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipComplete:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipComplete:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showToast()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    sget-object v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080020
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "IncomingCallTutorialIncallScreen"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->initIncomingTutorial()V

    iget-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->answer_passed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->reject_passed:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->END_CALL:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->endbutton_clicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->reject_passed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "IncomingCallTutorialIncallScreen"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setRequestedOrientation(I)V

    :goto_0
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->initIncomingTutorial()V

    invoke-virtual {p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->animationInit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mTipAccept:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "IncomingCallTutorialIncallScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->answer_passed:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->answer_passed:Z

    sget-object v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->ACCEPT_CALL:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->showToast()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->answer_passed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;->REJECT_CALL:Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;

    invoke-direct {p0, v0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->setIncomingCallTutorialMode(Lcom/android/incallui/help/IncomingCallTutorialIncallScreen$IncomingCallTutorialStep;)V

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v3, p0, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->reject_passed:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/help/IncomingCallTutorialIncallScreen;->showToast()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
