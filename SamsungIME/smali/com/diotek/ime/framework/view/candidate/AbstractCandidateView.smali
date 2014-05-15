.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateView.java"


# instance fields
.field protected mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

.field private mDisplayedCount:I

.field private mExpandButton:Landroid/view/View;

.field private mExpandButtonLayout:Landroid/view/View;

.field private mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

.field private mExpandCandidatePopup:Landroid/widget/PopupWindow;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsAlreadyDismissExpandPopup:Z

.field protected mIsPopupCandidateView:Z

.field protected mIsSupportOneHanded:Z

.field protected mIsTabletMode:Z

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-object v0
.end method

.method private useExpandingAnimationInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->useAnimationOfExpandCandidate()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public dismissExpandPopup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setOneHandBgDim(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->udpateContentDescription()V

    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto :goto_0
.end method

.method protected abstract getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;
.end method

.method protected abstract getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.end method

.method public abstract getCandidateExpandNonShadowBg()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCandidateLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
.end method

.method public abstract getCandidateViewHeight()I
.end method

.method public getCandidates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCandidatesDisplayedCount()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    return v0
.end method

.method protected abstract getExpandButton()Landroid/view/View;
.end method

.method protected abstract getExpandButtonClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getExpandButtonHoverListener()Landroid/view/View$OnHoverListener;
.end method

.method protected abstract getExpandButtonLayout()Landroid/widget/LinearLayout;
.end method

.method protected abstract getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract getExpandButtonWidth()I
.end method

.method protected abstract getExpandPopupBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getExpandPopupHeight(I)I
.end method

.method protected abstract getExpandPopupWidth()I
.end method

.method protected getExpandPopupYPositon()I
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getService()Lcom/diotek/ime/framework/common/AbstractInputMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/AbstractInputMethod;->onEvaluateFullscreenMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/AbstractInputMethod;->getWindow()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v2, v1, v4

    :goto_0
    return v2

    :cond_0
    const/high16 v4, 0x4040

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method protected abstract getExpandPouupMaxLine()I
.end method

.method public abstract getFloatingKeyboardLeftEdge()I
.end method

.method public abstract getFloatingKeyboardRightEdge()I
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setPadding(IIII)V

    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v5, 0x0

    iput v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v2

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setPopupCandidateLayout()V

    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x4

    if-eq v1, v6, :cond_a

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    :goto_1
    if-eqz v2, :cond_d

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4, p1, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    iget v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {v4, p1, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCandidates(Ljava/util/ArrayList;I)I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandNonShadowBg()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    move v3, v5

    goto :goto_0

    :cond_a
    if-nez v2, :cond_b

    :goto_3
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    goto :goto_1

    :cond_b
    move v4, v5

    goto :goto_3

    :cond_c
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_d
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4, p1, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v4, :cond_8

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    iget v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_e

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_f
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected abstract setExpandButtonImage(Z)V
.end method

.method public setPopupCandidateView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    return-void
.end method

.method public showExpandPopup()V
    .locals 10

    const/4 v9, 0x4

    const/16 v5, 0x33

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    :cond_1
    iput-boolean v7, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->useExpandingAnimationInternal()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;

    invoke-direct {v3, p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getCurrentLocationX()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY()I

    move-result v5

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationYTopMargin()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v2

    if-nez v2, :cond_d

    if-eq v0, v9, :cond_d

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->udpateContentDescription()V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_5
    return-void

    :cond_6
    const/4 v0, -0x1

    const-string v2, "SamsungIME"

    const-string v3, "mInputModeManager is null !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->isRightSide()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightInitX()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v8}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v5

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v3

    invoke-virtual {v1, v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v4

    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v2

    if-nez v2, :cond_c

    if-ne v0, v9, :cond_a

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    const/16 v3, 0x320

    if-ne v2, v3, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x53

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, p0, v3, v7, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupYPositon()I

    move-result v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_c
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, p0, v5, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0, v7}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto/16 :goto_3

    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public udpateContentDescription()V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateCandidates()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateExpandButtonImage(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    return-void
.end method
