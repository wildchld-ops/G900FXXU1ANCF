.class public abstract Lcom/samsung/dialer/impl/DialerTutorialDialog;
.super Landroid/app/Dialog;
.source "DialerTutorialDialog.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;
    }
.end annotation


# instance fields
.field public CONTACT_NAME:Ljava/lang/String;

.field public CONTACT_NUMBER:Ljava/lang/String;

.field private aniTime:I

.field private btnNumbers:[Landroid/view/View;

.field private hoverOffsetY:I

.field private hoverOffsetYSub:I

.field private hoverWindow:Landroid/widget/HoverPopupWindow;

.field private imgPickerAbove:Landroid/widget/ImageView;

.field private imgPickerBelow:Landroid/widget/ImageView;

.field private imgPointer:Landroid/widget/ImageView;

.field private isLoadStep:Z

.field private llMsgbox:Landroid/widget/LinearLayout;

.field private mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mFadingAnimation:Landroid/view/animation/Animation;

.field private mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFlashingAnimation:Landroid/view/animation/Animation;

.field private mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mHandler:Landroid/os/Handler;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private mShowAnimationPicker:Landroid/view/animation/Animation;

.field private marginPickerAbove:I

.field private marginPickerBelow:I

.field private msg:I

.field private notiHeight:I

.field private pickerType:I

.field private resTarget:I

.field private rlTutorialDialog:Landroid/widget/RelativeLayout;

.field private runSetStep:Ljava/lang/Runnable;

.field private screenSize:Landroid/graphics/Rect;

.field protected step:I

.field private stepDialAnimation:I

.field private touchArea:Landroid/graphics/Rect;

.field private touchType:I

.field private txtMsg:Landroid/widget/TextView;

.field private viewTarget:Landroid/view/View;

.field private visibilityPointer:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v0, "Rebecca"

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->CONTACT_NAME:Ljava/lang/String;

    const-string v0, "0123"

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->CONTACT_NUMBER:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->marginPickerBelow:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->marginPickerAbove:I

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->msg:I

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchType:I

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->pickerType:I

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->resTarget:I

    iput-boolean v3, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->visibilityPointer:Z

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->notiHeight:I

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->btnNumbers:[Landroid/view/View;

    new-instance v0, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog$1;-><init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/dialer/impl/DialerTutorialDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog$2;-><init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->runSetStep:Ljava/lang/Runnable;

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->aniTime:I

    new-instance v0, Lcom/samsung/dialer/impl/DialerTutorialDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog$3;-><init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog$4;-><init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->requestWindowFeature(I)Z

    move-object v0, p1

    check-cast v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iput-boolean p2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->isLoadStep:Z

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->notiHeight:I

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0266

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverOffsetY:I

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v0}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverOffsetYSub:I

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->runSetStep:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->rlTutorialDialog:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFlashingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->aniTime:I

    return v0
.end method

.method static synthetic access$1108(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I
    .locals 2

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->aniTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->aniTime:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFadingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/impl/DialerTutorialDialog;)[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->btnNumbers:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->stepDialAnimation:I

    return v0
.end method

.method static synthetic access$308(Lcom/samsung/dialer/impl/DialerTutorialDialog;)I
    .locals 2

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->stepDialAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->stepDialAnimation:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->setTouchArea()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->setPosition()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->runAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/dialer/impl/DialerTutorialDialog;)Lcom/samsung/dialer/impl/DialerTutorialActivity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    return-object v0
.end method

.method private animationInit(Landroid/content/Context;)V
    .locals 2

    const v1, 0x7f040008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mShowAnimationPicker:Landroid/view/animation/Animation;

    const v0, 0x7f040006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFadingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFadingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFlashingAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFlashingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private createHoverPopupView()Landroid/view/View;
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v0, 0x7f030119

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0802c2

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v0, 0x7f0802c3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->CONTACT_NAME:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->CONTACT_NUMBER:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0802c0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x1

    move-wide v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    return-object v7
.end method

.method private getHoverPopupWindowOffset()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverOffsetYSub:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverOffsetY:I

    goto :goto_0
.end method

.method public static final getTutorialDialog(Landroid/app/Activity;Ljava/lang/String;Z)Lcom/samsung/dialer/impl/DialerTutorialDialog;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "MAKE_CALLS_TUTORIAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;

    invoke-direct {v0, p0, p2}, Lcom/samsung/dialer/impl/DialerTutorialMakeCall;-><init>(Landroid/app/Activity;Z)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "SAVE_CONTACTS_KEYPAD_TUTORIAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;

    invoke-direct {v0, p0, p2}, Lcom/samsung/dialer/impl/DialerTutorialSaveContacts;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "SPEED_DIAL_TIP_TUTORIAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;

    invoke-direct {v0, p0, p2}, Lcom/samsung/dialer/impl/DialerTutorialSpeedDial;-><init>(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method private prepareRunStep()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hideView()V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->setTextWithImage()V

    return-void
.end method

.method private runAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->visibilityPointer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mFadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->msg:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->pickerType:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mShowAnimationPicker:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mShowAnimationPicker:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPosition()V
    .locals 7

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->screenSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_3

    const/4 v5, 0x1

    iput v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->pickerType:I

    :goto_0
    iget v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->msg:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->pickerType:I

    if-nez v5, :cond_4

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->marginPickerBelow:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->screenSize:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->screenSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->pickerType:I

    goto/16 :goto_0

    :cond_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->marginPickerAbove:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_1
.end method

.method private setTextWithImage()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->msg:I

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->msg:I

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->txtMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->txtMsg:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->msg:I

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    const-string v2, "<img src=\"guide_icon_call\"/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->txtMsg:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;-><init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    invoke-static {v0, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->msg:I

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    const-string v2, "<img src=\"guide_icon_vtcall\"/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->txtMsg:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog$ImageGetter;-><init>(Lcom/samsung/dialer/impl/DialerTutorialDialog;)V

    invoke-static {v0, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7f0e049c -> :sswitch_1
        0x7f0e049e -> :sswitch_2
    .end sparse-switch
.end method

.method private setTouchArea()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->resTarget:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->resTarget:I

    invoke-virtual {v1, v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    iput v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->resTarget:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchType:I

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x63

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    aget v2, v0, v5

    aget v3, v0, v6

    iget v4, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->notiHeight:I

    sub-int/2addr v3, v4

    aget v4, v0, v5

    iget-object v5, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v6

    iget-object v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->notiHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public clearAllMessages()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected finishTutorial()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->clearAllMessages()V

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v3, "tutorial"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "step"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->dismiss()V

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->finish()V

    return-void
.end method

.method protected hideView()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030126

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x7f0802df

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->rlTutorialDialog:Landroid/widget/RelativeLayout;

    const v1, 0x7f0802e0

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    const v1, 0x7f0802e4

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    const v1, 0x7f0802e5

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    const v1, 0x7f0802e1

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    const v1, 0x7f0802e2

    invoke-virtual {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->txtMsg:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->screenSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->screenSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->rlTutorialDialog:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-direct {p0, v1}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->animationInit(Landroid/content/Context;)V

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const v10, 0x7f0801a4

    const/high16 v2, 0x3f80

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    iget v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchType:I

    if-nez v1, :cond_1

    move v4, v0

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v4, v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->createHoverPopupView()Landroid/view/View;

    move-result-object v8

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    if-nez v1, :cond_2

    invoke-virtual {p1, v9}, Landroid/view/View;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1, v8}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/HoverPopupWindow;->setInstanceOfDialer(Z)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    const/16 v3, 0x3031

    invoke-virtual {v1, v3}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    const/16 v3, 0x190

    invoke-virtual {v1, v3}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->getHoverPopupWindowOffset()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->hoverWindow:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/HoverPopupWindow;->setHoverPopupToolType(I)V

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v1}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sound_effects_enabled"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v7, v0

    :goto_1
    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget-object v0, v0, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v0, v0, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    iget-object v1, v1, Lcom/samsung/dialer/impl/DialerTutorialActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget v1, v1, Lcom/android/dialer/dialpad/DialpadFragment;->mSoundTone:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_3
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->tutorialSenarioResult()V

    goto/16 :goto_0

    :cond_4
    move v7, v4

    goto :goto_1

    :pswitch_3
    move v4, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method protected onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    iget-boolean v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->isLoadStep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v2, "tutorial"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "step"

    iget v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->visibilityPointer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const v1, 0x7f0e048d

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected runDialpadAnimation()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->stepDialAnimation:I

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected runTimerForFinish()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected runTimerForNextStep()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected saveStep()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v3, "tutorial"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "step"

    iget v3, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->step:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected setDialButtonForAni([Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->btnNumbers:[Landroid/view/View;

    return-void
.end method

.method protected setMsg(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->msg:I

    return-void
.end method

.method protected setPointerVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->visibilityPointer:Z

    return-void
.end method

.method protected setStep()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/dialer/impl/DialerTutorialDialog;->prepareRunStep()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setTargetView(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->resTarget:I

    return-void
.end method

.method protected setTargetView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->viewTarget:Landroid/view/View;

    return-void
.end method

.method protected setTouchType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->touchType:I

    return-void
.end method

.method protected showToast(I)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    invoke-virtual {v2}, Lcom/samsung/dialer/impl/DialerTutorialActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03012a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0802f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->mActivity:Lcom/samsung/dialer/impl/DialerTutorialActivity;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public abstract start()V
.end method

.method protected stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPointer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->llMsgbox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerAbove:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/dialer/impl/DialerTutorialDialog;->imgPickerBelow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method protected abstract tutorialSenarioResult()V
.end method
