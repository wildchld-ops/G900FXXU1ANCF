.class public Lcom/diotek/ime/implement/view/candidate/CandidateLayout;
.super Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
.source "CandidateLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->setPadding(IIII)V

    return-void

    :cond_0
    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->setPadding(IIII)V

    return-void

    :cond_0
    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_0
.end method

.method private getLeftButtonAreaWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected getBackgroundResourceId()I
    .locals 4

    const v2, 0x7f020024

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    :try_start_0
    const-string v3, "floating_candidate_bg_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getBottomPaddingSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09058f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getCandidateLeftRightGapForOneHand()I
    .locals 4

    const v3, 0x7f090419

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090418

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090417

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getHighlightTextColor()I
    .locals 4

    const v3, 0x7f0b0018

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getInputedTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getLeftPaddingSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth(Z)I
    .locals 10

    const v9, 0x7f09002b

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    const/4 v0, 0x0

    const/4 v8, 0x7

    if-ne v4, v8, :cond_2

    :try_start_0
    const-string v8, "split_candidate_view_width"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    sub-int/2addr v0, v8

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v8, 0x8

    if-ne v4, v8, :cond_5

    :try_start_1
    const-string v8, "floating_candidate_view_width"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    sub-int/2addr v0, v8

    :cond_3
    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v7

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonOnEmailUrlMode()Z

    move-result v6

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    if-nez v2, :cond_6

    if-eqz v5, :cond_8

    :cond_6
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v0, v8

    :cond_7
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_a
    move v1, v0

    goto/16 :goto_0
.end method

.method protected getOneHandKeyboardViewWidth()I
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09041a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09041b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPressedTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ROBOTO_REGULAR"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "DROIDSANS_BOLD"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method protected getRightPaddingSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSelecedBackgroundResourceId()I
    .locals 1

    const v0, 0x7f020023

    return v0
.end method

.method protected getSplitResourceId()I
    .locals 1

    const v0, 0x7f02002e

    return v0
.end method

.method protected getSuggestionFontSize()F
    .locals 2

    const v1, 0x7f090028

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090591

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestionHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09058d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ROBOTO_REGULAR"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "DROIDSANS"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method protected getTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getTopPaddingSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09058e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public setSuggestionSelectionBg(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getBackgroundResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setBackgroundResource(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getSelecedBackgroundResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
