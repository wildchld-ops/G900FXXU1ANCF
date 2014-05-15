.class public Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;
.super Landroid/app/Activity;
.source "RejectwithMessageTutorialIncallScreen.java"

# interfaces
.implements Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;


# static fields
.field public static defaultRejectMsgList:[Ljava/lang/String;

.field public static final defaultRejectMsgListKor:[Ljava/lang/String;


# instance fields
.field private mBubbleAnimation1:Landroid/view/animation/Animation;

.field private mBubbleAnimation2:Landroid/view/animation/Animation;

.field private mBubbleCount:I

.field private mDragUpImageLayout:Landroid/widget/FrameLayout;

.field private mDragUpImageView:[Landroid/widget/ImageView;

.field private mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mHandler:Landroid/os/Handler;

.field private mIncomingCallPhoto:Landroid/widget/LinearLayout;

.field private mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

.field private mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

.field public mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

.field private mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

.field private mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

.field private mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

.field private mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

.field private mRejectCallWithMsgTab:Landroid/widget/LinearLayout;

.field private mSendMsgComplete:Landroid/widget/FrameLayout;

.field private mSendMsgLayout:Landroid/view/ViewGroup;

.field private mSendMsgTip:Landroid/widget/FrameLayout;

.field private mSendMsgTipBubble:Landroid/widget/FrameLayout;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mrejectMsgTip:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_list1"

    aput-object v1, v0, v2

    const-string v1, "callsettings_rejectmessage_list2"

    aput-object v1, v0, v3

    const-string v1, "callsettings_rejectmessage_list3"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_list4"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_list5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->defaultRejectMsgList:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "callsettings_rejectmessage_list1_kor"

    aput-object v1, v0, v2

    const-string v1, "callsettings_rejectmessage_list2_kor"

    aput-object v1, v0, v3

    const-string v1, "callsettings_rejectmessage_list3_kor"

    aput-object v1, v0, v4

    const-string v1, "callsettings_rejectmessage_list4_kor"

    aput-object v1, v0, v5

    const-string v1, "callsettings_rejectmessage_list5_kor"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->defaultRejectMsgListKor:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-array v0, v1, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I

    new-instance v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$8;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$9;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$9;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$10;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$11;

    invoke-direct {v0, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$11;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->showToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->hideDragUpAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)[Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$1408(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgComplete:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private buttonAnimationInit(Landroid/content/Context;)V
    .locals 4

    const v3, 0x7f050002

    const v0, 0x7f05000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f05000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation2:Landroid/view/animation/Animation;

    return-void
.end method

.method private hideDragUpAnimation()V
    .locals 2

    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "hideDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->stopDragUpAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private showDragUpAnimation()V
    .locals 2

    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "showDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->startDragUpAnimation()V

    return-void
.end method

.method private showToast()V
    .locals 0

    return-void
.end method

.method private startDragUpAnimation()V
    .locals 2

    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "startDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopDragUpAnimation()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "stopDragUpAnimation()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "RejectwithMsgTutorialIncallScreen"

    const-string v4, "onConfigurationChanged"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0230

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0231

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallPhoto:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v11, 0x7f08021d

    const v8, 0x7f080219

    const/4 v10, 0x5

    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "RejectwithMsgTutorialIncallScreen"

    const-string v7, "onCreate()"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "tablet_device"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->setRequestedOrientation(I)V

    :goto_0
    const v6, 0x7f040060

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->setContentView(I)V

    invoke-virtual {p0, v11}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    const v6, 0x7f080215

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SlidingDrawer;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    const v6, 0x7f080218

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$1;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$1;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f080217

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/RejectCallWithMessageContent;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    const-string v6, "automatic_answering_machine"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    const v7, 0x7f0801f2

    invoke-virtual {v6, v7}, Lcom/android/incallui/RejectCallWithMessageContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v6, 0x7f08020a

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgLayout:Landroid/view/ViewGroup;

    const-string v6, "tablet_device"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_1
    const-string v6, "reject_call_with_message_icon_mode"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_2
    const v6, 0x7f080216

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgTab:Landroid/widget/LinearLayout;

    const v6, 0x7f08021b

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgLayout:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$2;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$2;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v6, 0x7f080205

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgScroll:Landroid/widget/ScrollView;

    new-instance v7, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$3;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const-string v6, "change_message_icon_for_vzw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v7, 0x7f0202ef

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    const v6, 0x7f08021f

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;

    const v6, 0x7f080222

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTip:Landroid/widget/FrameLayout;

    const v6, 0x7f080225

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgTipBubble:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$4;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f080226

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mSendMsgComplete:Landroid/widget/FrameLayout;

    const v6, 0x7f080227

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const/4 v8, 0x0

    const v6, 0x7f080228

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v7, v8

    iget-object v7, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const v6, 0x7f080229

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v7, v9

    iget-object v7, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const/4 v8, 0x2

    const v6, 0x7f08022a

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v7, v8

    iget-object v7, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mDragUpImageView:[Landroid/widget/ImageView;

    const/4 v8, 0x3

    const v6, 0x7f08022b

    invoke-virtual {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    aput-object v6, v7, v8

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->buttonAnimationInit(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_8

    const/4 v3, 0x0

    const-string v6, "modify_reject_message"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->defaultRejectMsgListKor:[Ljava/lang/String;

    aget-object v1, v6, v2

    :goto_3
    const-string v6, "string"

    invoke-virtual {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "RejectwithMsgTutorialIncallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Reject Message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_6
    const-string v6, "change_message_icon_for_att"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandleIcon:Landroid/widget/ImageView;

    const v7, 0x7f0202ee

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_7
    sget-object v6, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->defaultRejectMsgList:[Ljava/lang/String;

    aget-object v1, v6, v2

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMessageContent:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-virtual {v6, v5}, Lcom/android/incallui/RejectCallWithMessageContent;->configureRejectCallWithMessageSlidingDrawer(Ljava/util/ArrayList;)V

    :cond_9
    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v7, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$5;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$5;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v7, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$6;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$6;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    new-instance v7, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$7;

    invoke-direct {v7, p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen$7;-><init>(Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    invoke-virtual {p0, v11}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iput-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    iget-object v6, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mIncomingCallWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v6, p0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setOnTriggerListener(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->hideDragUpAnimation()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RejectwithMsgTutorialIncallScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->showDragUpAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mrejectMsgTip:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->mBubbleAnimation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->showToast()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/help/RejectwithMessageTutorialIncallScreen;->showToast()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
