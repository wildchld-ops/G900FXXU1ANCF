.class public Lcom/samsung/contacts/impl/TutorialPopupView;
.super Landroid/widget/RelativeLayout;
.source "TutorialPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/impl/TutorialPopupView$13;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mArrowIndicator:Landroid/widget/ImageView;

.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mBubbleView:Landroid/view/View;

.field private mCircleSize:I

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentPointAnimation:I

.field private mIgnoreTouchEventOutOfIndicator:Z

.field private mIndicator:Landroid/widget/LinearLayout;

.field private mIndicatorCircle:Landroid/widget/ImageView;

.field private mIndicatorCircle2nd:Landroid/widget/ImageView;

.field private mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

.field private mMainView:Landroid/view/View;

.field private mOnIndicatorTouchListener:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

.field private mOnIndicatorTouchListenerSecond:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

.field private mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchArea:Landroid/view/View;

.field private mTutorialTextView:Landroid/widget/TextView;

.field private mTutorialTextViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->HELP_BASIC:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/contacts/impl/TutorialPopupView;-><init>(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V
    .locals 8

    const v7, 0x7f0b0133

    const v6, 0x7f030127

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I

    iput v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    new-instance v4, Lcom/samsung/contacts/impl/TutorialPopupView$10;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$10;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    iput-object p5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/samsung/contacts/impl/TutorialPopupView$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$1;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    sget-object v4, Lcom/samsung/contacts/impl/TutorialPopupView$13;->$SwitchMap$com$samsung$contacts$impl$HelpImpl$LAYOUT_TYPE:[I

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    invoke-virtual {v5}, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    if-nez v4, :cond_1

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {v0, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :pswitch_2
    const v4, 0x7f030128

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    new-instance v5, Lcom/samsung/contacts/impl/TutorialPopupView$2;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$2;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I

    goto :goto_0

    :pswitch_3
    const v4, 0x7f030129

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    new-instance v5, Lcom/samsung/contacts/impl/TutorialPopupView$3;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$3;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    const v5, 0x7f0802e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    const v5, 0x7f0802e7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    const v5, 0x7f0802ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    const v5, 0x7f0802e8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    const v4, 0x7f0802ef

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/impl/TutorialPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    const v5, 0x7f0802ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    const v5, 0x7f0802e9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    const v5, 0x7f0802ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    const v5, 0x7f0802ea

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTutorialTextViewContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0269

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_2
    iput v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I

    new-instance v2, Lcom/samsung/contacts/impl/TutorialPopupView$4;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$4;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    sget-object v4, Lcom/samsung/contacts/impl/TutorialPopupView$13;->$SwitchMap$com$samsung$contacts$impl$HelpImpl$LAYOUT_TYPE:[I

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    invoke-virtual {v5}, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->initialize()V

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/samsung/contacts/impl/TutorialPopupView$8;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$8;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_4
    invoke-direct {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->initAnimations()V

    goto/16 :goto_1

    :cond_3
    iget v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I

    goto :goto_2

    :pswitch_4
    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    :pswitch_5
    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    new-instance v5, Lcom/samsung/contacts/impl/TutorialPopupView$5;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$5;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :pswitch_6
    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    new-instance v5, Lcom/samsung/contacts/impl/TutorialPopupView$6;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$6;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    new-instance v5, Lcom/samsung/contacts/impl/TutorialPopupView$7;

    invoke-direct {v5, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$7;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/samsung/contacts/impl/TutorialPopupView;->setBubbleAndIndicatorLeftPosition(I)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/contacts/impl/TutorialPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/impl/TutorialPopupView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->setDynamicTopPosition()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/contacts/impl/TutorialPopupView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$1108(Lcom/samsung/contacts/impl/TutorialPopupView;)I
    .locals 2

    iget v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/contacts/impl/TutorialPopupView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/util/DisplayMetrics;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/impl/TutorialPopupView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/contacts/impl/TutorialPopupView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/impl/TutorialPopupView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView;->constructPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mOnIndicatorTouchListenerSecond:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/contacts/impl/TutorialPopupView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/contacts/impl/TutorialPopupView;)Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/contacts/impl/TutorialPopupView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCircleSize:I

    return v0
.end method

.method private constructPopupMenu(Landroid/view/View;)V
    .locals 3

    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f110016

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    new-instance v2, Lcom/samsung/contacts/impl/TutorialPopupView$9;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$9;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->setupMenuItems(Landroid/view/Menu;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private dispatchTouchEventToActivity(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    sget-object v3, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->HELP_SPEEDDIAL:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method private initAnimations()V
    .locals 5

    const-wide/16 v3, 0x2bc

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const v2, 0x7f040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    iget v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method private setDynamicTopPosition()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/contacts/impl/TutorialPopupView$12;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/impl/TutorialPopupView$12;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f08034c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f080350

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f080351

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f080352

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f080353

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f080354

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f080356

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v1, 0x7f080329

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public initialize()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setTopPostion(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/impl/TutorialPopupView;->setBubbleAndIndicatorLeftPosition(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->setIndicatorVisibility(Z)V

    iput v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I

    return-void
.end method

.method public setArrowVisibility(Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setBubbleAndIndicatorLeftPosition(I)V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v2, 0x3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mMainView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, p1, v5

    :goto_0
    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v3, v5

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v6, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mArrowIndicator:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    sub-int v6, v3, v6

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    int-to-double v6, v1

    const-wide v8, 0x3ff2666666666666L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTutorialTextViewContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, p1, v5

    goto :goto_0

    :cond_2
    if-le v3, v4, :cond_3

    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTutorialTextViewContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTutorialTextViewContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1
.end method

.method public setIndicatorVisibility(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public setOnIndicatorTouchListener(Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mOnIndicatorTouchListener:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

    return-void
.end method

.method public setOnSecondIndicatorTouchListener(Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mOnIndicatorTouchListenerSecond:Lcom/samsung/contacts/impl/HelpImpl$OnIndicatorTouchListener;

    return-void
.end method

.method public setPostionFromBottom(I)V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/impl/TutorialPopupView$11;

    invoke-direct {v0, p0, p1}, Lcom/samsung/contacts/impl/TutorialPopupView$11;-><init>(Lcom/samsung/contacts/impl/TutorialPopupView;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/contacts/impl/TutorialPopupView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSoundDisable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicatorCircle2nd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTutorialTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTopPostion(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setTouchableArea(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mTouchArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public show(ZZZ)V
    .locals 8

    const v7, 0x7f0b021b

    const/4 v6, -0x1

    const/4 v5, 0x0

    iput-boolean p1, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIgnoreTouchEventOutOfIndicator:Z

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz p3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mLayoutType:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    sget-object v4, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->HELP_SPEEDDIAL:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    if-eqz p2, :cond_1

    const/16 v3, 0x18

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v3, 0x33

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/TutorialPopupView;->hide()V

    iget-object v3, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    :try_start_0
    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p3, :cond_2

    invoke-virtual {p0, v5}, Lcom/samsung/contacts/impl/TutorialPopupView;->setIndicatorVisibility(Z)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    return-void

    :cond_0
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/view/WindowManager$InvalidDisplayException;->printStackTrace()V

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mIndicator:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mPointAnimations:Ljava/util/List;

    iget v5, p0, Lcom/samsung/contacts/impl/TutorialPopupView;->mCurrentPointAnimation:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method
