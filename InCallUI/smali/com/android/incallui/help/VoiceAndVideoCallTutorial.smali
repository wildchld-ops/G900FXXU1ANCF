.class public Lcom/android/incallui/help/VoiceAndVideoCallTutorial;
.super Landroid/app/Activity;
.source "VoiceAndVideoCallTutorial.java"


# instance fields
.field private callDialingAnimation:Landroid/widget/ImageView;

.field private callImageAnimation:Landroid/widget/ImageView;

.field private callImgUnknown:Landroid/widget/RelativeLayout;

.field private callImgUserView:Landroid/widget/ImageView;

.field private callRunTime:Landroid/widget/TextView;

.field private callStateLayout:Landroid/widget/RelativeLayout;

.field private callTimerCount:I

.field private callduringcallmysound:Landroid/widget/ImageView;

.field private callerInfoLayout:Landroid/widget/RelativeLayout;

.field private callerName:Landroid/widget/TextView;

.field private dialingImgUserView:Landroid/widget/ImageView;

.field private inCallIconContainer:Landroid/widget/LinearLayout;

.field private mAddButton:Landroid/widget/Button;

.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mEndButton:Landroid/widget/Button;

.field private mExtraStep:Ljava/lang/String;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mHelpTabView:Landroid/widget/ImageView;

.field private mMakeCallComplete:Landroid/widget/FrameLayout;

.field private mMySoundButton:Landroid/widget/ImageView;

.field private mNoiseReductionButton:Landroid/widget/ImageView;

.field private mRecordButton:Landroid/widget/Button;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTipEndCall:Landroid/widget/FrameLayout;

.field private mTutorialLayout:Landroid/widget/FrameLayout;

.field private timerForAni:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    iput v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleCount:I

    iput v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    new-instance v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;-><init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$5;-><init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$6;-><init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$7;-><init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dispCallDuration()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->runVoiceCallAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callActiveScreenSettings()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->startActivity(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->showToast()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$908(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    return v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 4

    const v3, 0x7f050002

    const v0, 0x7f05000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private callActiveScreenSettings()V
    .locals 11

    const-string v7, "VoiceAndVideoCallTutorial"

    const-string v8, "callActiveScreenSettings"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f080258

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    const v7, 0x7f080154

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    const v7, 0x7f0800e7

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const v8, 0x7f0700f8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const-string v8, "00:00"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    const-wide/16 v9, 0x3e8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v7, "voicecall"

    iget-object v8, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "tablet_device"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0x7f0800e8

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callStateLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callStateLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f090006

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v7, 0x7f0800fd

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->inCallIconContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->inCallIconContainer:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v7, 0x7f08025f

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    const-string v7, "align_right_voice_eq_btn"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0138

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callduringcallmysound:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v7, 0x7f08025c

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImgUnknown:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImgUnknown:Landroid/widget/RelativeLayout;

    const v8, 0x7f0203c1

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$1;-><init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$2;

    invoke-direct {v8, p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$2;-><init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->animationInit(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTipEndCall:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mBubbleAnimation2:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_2
    const v7, 0x7f08025d

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const v8, 0x7f0203c1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const-string v7, "videocall"

    iget-object v8, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "tablet_device"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x7f0800eb

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v7, "ims_ui_for_kor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f0800e5

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v7, 0x7f0800e4

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v7, 0x7f0800e8

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f09003c

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v7, 0x7f0800e6

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const v7, 0x7f0800ec

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v7, 0x7f0800ed

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    if-eqz v2, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const v7, 0x7f0800e5

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImgUserView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v7, 0x7f0800e4

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dialingImgUserView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v7, 0x7f0800e8

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const v8, 0x7f09003c

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const-string v7, "ims_ui_for_kor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callerInfoLayout:Landroid/widget/RelativeLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v7, 0x7f0800eb

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v7, 0x7f0800e6

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const v7, 0x7f080256

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    const v7, 0x7f080257

    invoke-virtual {p0, v7}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private dialingScreenToast()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$8;

    invoke-direct {v1, p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$8;-><init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private dispCallDuration()V
    .locals 4

    const/16 v3, 0xa

    iget v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v1, v1, 0x3c

    if-ge v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callRunTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private runVoiceCallAnimation()V
    .locals 6

    const-string v0, "VoiceAndVideoCallTutorial"

    const-string v1, "runVoiceCallAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f08025d

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const v0, 0x7f08025e

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callImageAnimation:Landroid/widget/ImageView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callDialingAnimation:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    new-instance v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;

    const-wide/16 v2, 0xe10

    const-wide/16 v4, 0x190

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$3;-><init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;JJ)V

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private showToast()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700eb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startActivity(Z)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "com.android.contacts"

    :cond_0
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".action.DialerHelpActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x2400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "DialerGuideMode"

    const-string v4, "MAKE_CALLS_TUTORIAL"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_4

    const-string v3, "voicecall"

    iget-object v4, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "step"

    const-string v4, "voicecall"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const-string v3, "step"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "VoiceAndVideoCallTutorial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity - intent.getStringExtra(EXTRA_STEP) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "step"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->finish()V

    return-void

    :cond_3
    const-string v3, "videocall"

    iget-object v4, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "step"

    const-string v4, "videocall"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string v3, "video_call_disable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "step"

    const-string v4, "finish"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string v3, "voicecall"

    iget-object v4, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "step"

    const-string v4, "videocall"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    const-string v3, "videocall"

    iget-object v4, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "step"

    const-string v4, "finish"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private videoCallingTutorial()V
    .locals 5

    const/4 v3, 0x0

    const/16 v4, 0x67

    const-string v1, "VoiceAndVideoCallTutorial"

    const-string v2, "videoCallingTutorial"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f04002b

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->setContentView(I)V

    :goto_0
    const v1, 0x7f0800e2

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f08025a

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;

    const v1, 0x7f0800ea

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callerName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callerName:Landroid/widget/TextView;

    const v2, 0x7f0700f7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f080020

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080255

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dialingScreenToast()V

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    const v1, 0x7f04006e

    invoke-virtual {p0, v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->setContentView(I)V

    goto :goto_0
.end method

.method private voiceCallingTutorial()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "VoiceAndVideoCallTutorial"

    const-string v1, "voiceCallingTutorial"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->setContentView(I)V

    const v0, 0x7f080253

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mNoiseReductionButton:Landroid/widget/ImageView;

    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    const v0, 0x7f08025f

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mMySoundButton:Landroid/widget/ImageView;

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "voice_call_recording_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const v0, 0x7f08025b

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mTutorialLayout:Landroid/widget/FrameLayout;

    const-string v0, "video_call_disable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08025a

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mMakeCallComplete:Landroid/widget/FrameLayout;

    :cond_0
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dialingScreenToast()V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "step"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "step"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    :cond_0
    const-string v1, "VoiceAndVideoCallTutorial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init - mExtraStep : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "voicecall"

    iget-object v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->voiceCallingTutorial()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "videocall"

    iget-object v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->videoCallingTutorial()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "VoiceAndVideoCallTutorial"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->startActivity(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/16 v3, 0x64

    const/4 v2, 0x0

    const-string v0, "VoiceAndVideoCallTutorial"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "voicecall"

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->timerForAni:Landroid/os/CountDownTimer;

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->voiceCallingTutorial()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "videocall"

    iget-object v1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mExtraStep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput v2, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I

    invoke-direct {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->videoCallingTutorial()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "VoiceAndVideoCallTutorial"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->setRequestedOrientation(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->init()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "VoiceAndVideoCallTutorial"

    const-string v1, "onDestroyed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "VoiceAndVideoCallTutorial"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
