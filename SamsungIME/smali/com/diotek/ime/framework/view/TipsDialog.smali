.class public Lcom/diotek/ime/framework/view/TipsDialog;
.super Ljava/lang/Object;
.source "TipsDialog.java"


# static fields
.field public static final LANGUAGE_GUIDE_POPUP:I = 0x64

.field private static mDiscoverability:Landroid/widget/PopupWindow;

.field private static sInstance:Lcom/diotek/ime/framework/view/TipsDialog;


# instance fields
.field context:Landroid/content/Context;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field protected mCurrentInputMethod:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsCheckDontShowEmptyShortcutsGuide:Z

.field private mIsCheckDontShowGestureGuide:Z

.field private mIsCheckDontShowOneHandedGuide:Z

.field private mIsCheckDontShowPenDetectionGuide:Z

.field private mIsCheckDontShowPinchZoomGuide:Z

.field private mIsCheckDontShowTraceGuide:Z

.field private mIsCheckboxStandardData:Z

.field private mIsTipCheckDontShowAllGuide:Z

.field private mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOneHandedAnimationRunnable:Ljava/lang/Runnable;

.field private mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$1;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$4;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    return p1
.end method

.method static synthetic access$1200()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    return v0
.end method

.method static synthetic access$402(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    return p1
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    return v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    return p1
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    return v0
.end method

.method static synthetic access$602(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    return v0
.end method

.method static synthetic access$702(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    return p1
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    return v0
.end method

.method static synthetic access$802(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    return p1
.end method

.method static synthetic access$900(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    return v0
.end method

.method static synthetic access$902(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    return p1
.end method

.method public static getHeight(Landroid/content/Context;Ljava/lang/CharSequence;IILandroid/graphics/Typeface;I)I
    .locals 6

    const/16 v5, 0x42

    const/16 v3, 0x3f

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x3a2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    int-to-float v3, p2

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, -0x8000

    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    return v3
.end method

.method public static getInstance()Lcom/diotek/ime/framework/view/TipsDialog;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/TipsDialog;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    return-object v0
.end method

.method private isAvailableShowXt9_9RemoveDialog(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v12, ""

    const-string v11, ""

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const/16 v14, 0x40

    const/4 v15, 0x0

    invoke-interface {v2, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v14, 0x40

    const/4 v15, 0x0

    invoke-interface {v2, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    if-eqz v4, :cond_0

    const/16 v14, 0x20

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v14, -0x1

    if-ne v10, v14, :cond_4

    const/4 v14, -0x1

    if-ne v9, v14, :cond_4

    move-object v12, v4

    :goto_1
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v1, v14, -0x1

    :goto_2
    if-ltz v1, :cond_0

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_5

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_0
    if-eqz v3, :cond_1

    const/16 v14, 0x20

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v14, -0x1

    if-ne v7, v14, :cond_6

    const/4 v14, -0x1

    if-ne v6, v14, :cond_6

    move-object v11, v3

    :goto_3
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v1, v14, :cond_1

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_7

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x40

    if-le v14, v15, :cond_2

    const/16 v14, 0x40

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_2
    if-eqz v2, :cond_8

    if-eqz v13, :cond_8

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_8

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x0

    :goto_5
    return v14

    :cond_3
    const-string v4, ""

    const-string v3, ""

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_5

    :cond_9
    const/4 v14, 0x1

    goto :goto_5
.end method


# virtual methods
.method public closeDiscoverability()V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    :cond_2
    return-void
.end method

.method protected getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$79;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$79;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$80;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$80;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    goto :goto_0
.end method

.method protected getSelectedLanguageNames()[Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "English"

    aput-object v4, v1, v3

    :cond_1
    return-object v1
.end method

.method public isDiscoverabilityShown()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public showDiscoverability(ILandroid/view/View;Landroid/view/View;)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_1

    check-cast p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v2, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string v2, "SamsungIME"

    const-string v3, "[showDiscoverability] this is auto replacement discoverity popup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "SamsungIME"

    const-string v3, "[showDiscoverability] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/16 v28, 0x0

    const v2, 0x7f090029

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v10, v2

    const v2, 0x7f090003

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    const v2, 0x7f090004

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    move/from16 v27, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getBackupKeyboardHeight()I

    move-result v2

    add-int v18, v2, v10

    const v2, 0x7f090012

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v14, v2

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const/16 v2, -0x75

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f09001f

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int v2, v2, v18

    mul-int/lit8 v3, v10, 0x2

    add-int v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " %s "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const v2, 0x7f080004

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$75;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$75;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v24, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <img src=\"help_discoverability_handwriting_change_keypad_icon.png\"/> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v24, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "first_keyboardchange_popup_help_execution"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    :goto_3
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2}, Landroid/widget/PopupWindow;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    const v2, 0x7f090011

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    if-eqz v26, :cond_5

    sget-object v2, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const v2, 0x7f080004

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f09001e

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0x438

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v7, 0x3f

    invoke-static/range {v2 .. v7}, Lcom/diotek/ime/framework/view/TipsDialog;->getHeight(Landroid/content/Context;Ljava/lang/CharSequence;IILandroid/graphics/Typeface;I)I

    move-result v16

    :cond_5
    const/16 v19, 0x0

    const/16 v2, 0x64

    move/from16 v0, p1

    if-eq v0, v2, :cond_6

    const/16 v2, -0x75

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    const v2, 0x7f09000f

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    :cond_7
    :goto_4
    sget-object v2, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    add-int v3, v16, v19

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget-object v2, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v14}, Landroid/widget/PopupWindow;->setWidth(I)V

    sget-object v2, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    sget-object v2, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, -0x75

    move/from16 v0, p1

    if-ne v0, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstKeyboardChangeTap(Z)V

    :cond_8
    :goto_5
    sget-object v2, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/diotek/ime/framework/view/TipsDialog$76;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$76;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    if-eqz v26, :cond_9

    new-instance v2, Lcom/diotek/ime/framework/view/TipsDialog$77;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$77;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f080004

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    new-instance v2, Lcom/diotek/ime/framework/view/TipsDialog$78;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/diotek/ime/framework/view/TipsDialog$78;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    add-int v2, v13, v18

    mul-int/lit8 v3, v10, 0x2

    add-int v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    const v2, 0x7f090010

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    sub-int v2, v9, v2

    add-int v28, v2, v20

    :goto_6
    sget-object v2, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f030027

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f080004

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020275

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_7
    const v2, 0x7f080004

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f09000c

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    const v2, 0x7f09000d

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    move/from16 v27, v12

    :goto_8
    const-string v2, "first_mmkey_popup_help_execution"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020274

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_7

    :cond_d
    const v2, 0x7f090005

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, 0x7f090008

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    :goto_9
    move/from16 v27, v12

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_f

    const v2, 0x7f090007

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    goto :goto_9

    :cond_f
    const v2, 0x7f090006

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    goto :goto_9

    :cond_10
    const/16 v2, 0x20

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    if-eqz p2, :cond_13

    :cond_12
    const-string v2, "first_auto_replacement_tap_execution"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f090003

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    const v2, 0x7f090004

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    move/from16 v27, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    const-string v2, "first_auto_replacement_tap_execution"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x64

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    const-string v2, "first_languagechange_popup_help_execution"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f030024

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020278

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_a
    const v2, 0x7f080004

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f09000c

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    const v2, 0x7f09000d

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    move/from16 v27, v12

    :goto_b
    const-string v2, "first_languagechange_popup_help_execution"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_a

    :cond_15
    const v2, 0x7f090009

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v13, v2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const v2, 0x7f09000b

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    :goto_c
    move/from16 v27, v12

    goto :goto_b

    :cond_16
    const v2, 0x7f09000a

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    goto :goto_c

    :cond_17
    const v2, 0x7f09000e

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    goto/16 :goto_4

    :cond_18
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setMMKeyFirstTap(Z)V

    goto/16 :goto_5

    :cond_19
    const/16 v2, 0x20

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setFirstLanguageChangeTap(Z)V

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    sub-int v28, v9, v2

    goto/16 :goto_6

    :cond_1b
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    sub-int v28, v9, v2

    goto/16 :goto_6
.end method

.method public showEmptyShortcutsGuideDialog(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showEmptyShortcutsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideLayoutRscId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideCheckBoxRscId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideDialogTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v16, "first_empty_shortcuts_guide_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_6

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideDialogContent()Ljava/lang/String;

    move-result-object v11

    const v16, 0x7f080027

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$68;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$68;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_4

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$69;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/diotek/ime/framework/view/TipsDialog$69;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$70;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$70;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$71;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$71;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_0

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showGestureGuideDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_2

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideLayoutRscId()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideCheckBoxRscId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideDialogTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    if-nez v6, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v14, "SamsungIME"

    const-string v15, "[showGestureGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v14, "fist_hwr_execution"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v9, v7, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1020016

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_4

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_4
    const v14, 0x104000a

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$5;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v14, 0x104

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$6;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$7;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->adjustGestureGuideText(Landroid/view/View;)V

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_5

    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$8;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v3, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    iput-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    iget-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v14, :cond_1

    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_1

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    iput-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showHalfFullWidthSwitchDialog(Landroid/view/View;)V
    .locals 13

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v10, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "SamsungIME"

    const-string v11, "[showHalfFullWidthSwitchDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    iput v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v11

    invoke-direct {v10, v2, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d01c9

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    const/4 v10, 0x1

    aput-object v4, v6, v10

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isFullWidthMode()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$74;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$74;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02c6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6

    :cond_3
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v10, 0x3eb

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, -0x2

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v10, 0x3f19999a

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v7}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v3

    sget-boolean v10, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showLanguageSelectDialog(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    instance-of v5, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_2

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "IS_POPUP_SHOW"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x104

    new-instance v6, Lcom/diotek/ime/framework/view/TipsDialog$72;

    invoke-direct {v6, p0}, Lcom/diotek/ime/framework/view/TipsDialog$72;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getSelectedLanguageNames()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getLanguageIndexOfSupportedThings()I

    move-result v6

    new-instance v7, Lcom/diotek/ime/framework/view/TipsDialog$73;

    invoke-direct {v7, p0}, Lcom/diotek/ime/framework/view/TipsDialog$73;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getLanguageSelectDialogTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v5, 0x3f00

    invoke-virtual {v3, v5}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_0
    const/16 v5, 0x3eb

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setLangPopupShown(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v5, "SamsungIME"

    const-string v6, "[showLanguageSelectDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public showOneHandedGuideDialog(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showOneHandedGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideCheckBoxRscId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandGuideAnimationDrawbleRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v16, "first_one_handed_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_7

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$15;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$15;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$16;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/TipsDialog$16;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$17;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$17;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x1f4

    invoke-virtual/range {v16 .. v19}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v5

    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_6

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showPenDetectionGuideDialog(Landroid/view/View;)V
    .locals 14

    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v11, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showPenDetectionGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-nez v11, :cond_0

    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideLayoutRscId()I

    move-result v8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideCheckBoxRscId()I

    move-result v6

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$18;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$18;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0d010f

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$19;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$19;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_6

    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_PENDETECTIONGUIDE_CHECKBOX_CHECKED"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    :cond_5
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$20;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$20;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$21;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$21;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_7

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_8

    :cond_7
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showPinchZoomGuideDialog(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v17, "SamsungIME"

    const-string v18, "[showPinchZoomGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-nez v17, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideDialogTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideAnimationDrawbleRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getMovingGuideAnimationDrawbleRscId()I

    move-result v10

    if-eqz v12, :cond_0

    if-eqz v5, :cond_0

    if-eqz v11, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "IS_POPUP_SHOW"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "first_pinch_zoom_execution"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v17, 0x1020016

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_4

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    const v17, 0x104000a

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$2;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$3;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v17, 0x3eb

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v4

    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_6

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showSwiftkeyGuideDialog(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x1

    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideLayoutRscId()I

    move-result v8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v12

    invoke-direct {v11, v3, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v11, 0x7f080055

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iput-boolean v13, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$12;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$12;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$13;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$13;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$14;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$14;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    const/high16 v11, 0x3f00

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_4

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    :cond_4
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_5

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v8, p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    check-cast p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showSwiftkeyRemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$64;

    invoke-direct {v9, p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog$64;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x104

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$65;

    invoke-direct {v9, p0}, Lcom/diotek/ime/framework/view/TipsDialog$65;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v8, 0x3eb

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v8, 0x3f19999a

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showTipsCMkeyGuideDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsCMkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideLayoutRscId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideCheckBoxRscId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v5, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v10, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0800c4

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0d0147

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$43;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$43;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d0238

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$44;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$44;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d0146

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$45;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$45;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$46;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Lcom/diotek/ime/framework/view/TipsDialog$46;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$47;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$47;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$48;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$48;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$49;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$49;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v14, 0x3f19999a

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v12, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsDialogByIndex(ILandroid/view/View;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsTraceGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsCMkeyGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsRemoveWordsGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showTipsHwrInstallGuideDialog(Landroid/view/View;)V
    .locals 14

    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, -0x2

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v11, ""

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showTipsHwrInstallGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v11

    if-nez v11, :cond_0

    const v6, 0x7f03002f

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v12

    invoke-direct {v11, v2, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0d01c9

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$30;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$30;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$31;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$31;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    const/high16 v11, 0x3f00

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowSwiftkeyGuideConsecutively(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showTipsOneHandedGuideDialog(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v17, "SamsungIME"

    const-string v18, "[showTipsOneHandedGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-nez v17, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideCheckBoxRscId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandGuideAnimationDrawbleRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "IS_POPUP_SHOW"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v17, "first_one_handed_execution"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_8

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v17, 0x104000a

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$32;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$32;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$33;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/TipsDialog$33;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$34;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$34;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$35;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$35;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_6
    :goto_2
    const/16 v17, 0x3eb

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v5

    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_7

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showTipsRemoveWordsGuideDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsRemoveWordsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideLayoutRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideCheckBoxRscId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0800c6

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0d0147

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$57;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$57;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d0238

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$58;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$58;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d0146

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$59;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$59;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$60;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/diotek/ime/framework/view/TipsDialog$60;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$61;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$61;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$62;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$62;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$63;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$63;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsSwiftKeyLearnsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideLayoutRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideCheckBoxRscId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0800c8

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0d0147

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$50;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$50;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d0238

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$51;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$51;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d0146

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$52;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$52;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$53;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/diotek/ime/framework/view/TipsDialog$53;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$54;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$54;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$55;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$55;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$56;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$56;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsSwiftkeyGuideDialog(Landroid/view/View;)V
    .locals 14

    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v11, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showTipsSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-nez v11, :cond_0

    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideLayoutRscId()I

    move-result v8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v11, 0x7f080055

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_4

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$25;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$25;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$26;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$26;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0d010f

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$27;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$27;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$28;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$28;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$29;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$29;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_5

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_7

    :cond_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_6
    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsTraceGuideDialog(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v15, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v15, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v15, "SamsungIME"

    const-string v16, "[showTipsTraceGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->isShowing()Z

    move-result v15

    if-nez v15, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideCheckBoxRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideDialogTitle()Ljava/lang/String;

    move-result-object v11

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v15, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0800ca

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "1. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f0d0147

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$36;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$36;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d0238

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$37;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$37;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d0146

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$38;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$38;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Sip_TraceGuideDialogCheckDefault"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "true"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v15, :cond_5

    :cond_4
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    :cond_5
    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$39;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/diotek/ime/framework/view/TipsDialog$39;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$40;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$40;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$41;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$41;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$42;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$42;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v15, 0x3eb

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v15, -0x2

    iput v15, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v15, 0x3f19999a

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v13, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_0

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTraceGuideDialog(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showTraceGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideLayoutRscId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideCheckBoxRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideDialogTitle()Ljava/lang/String;

    move-result-object v12

    if-eqz v13, :cond_0

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v16, "first_trace_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_9

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$9;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Sip_TraceGuideDialogCheckDefault"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    :cond_5
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/diotek/ime/framework/view/TipsDialog$10;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$11;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_8
    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_0

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showXt9PersonalizerAttentionDialog(Landroid/view/View;)V
    .locals 14

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, -0x2

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v11, ""

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_5

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9PersonalizerAttentionGuideLayoutRscId()I

    move-result v10

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v10, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$22;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$22;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    const-string v12, "keyguard"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v11

    if-nez v11, :cond_2

    const v11, 0x7f0d010f

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$23;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$23;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$24;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$24;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroid/view/Window;->addFlags(I)V

    const/high16 v11, 0x3f00

    invoke-virtual {v8, v11}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v11, 0x3eb

    iput v11, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowXt9PersonalizerAttentionConsecutively(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v11, "SamsungIME"

    const-string v12, "[showXt9PersonalizerAttentionDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v2

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v8, p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    check-cast p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showXt9_9RemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/TipsDialog;->isAvailableShowXt9_9RemoveDialog(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$66;

    invoke-direct {v9, p0, p1}, Lcom/diotek/ime/framework/view/TipsDialog$66;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x104

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$67;

    invoke-direct {v9, p0}, Lcom/diotek/ime/framework/view/TipsDialog$67;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v8, 0x3eb

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x2

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v8, 0x3f19999a

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
