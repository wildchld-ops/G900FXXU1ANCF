.class public Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;
.super Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.source "CandidateExpandLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/16 v6, 0x8

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    if-eq v1, v6, :cond_0

    const/4 v5, 0x7

    if-ne v1, v5, :cond_2

    :cond_0
    if-ne v1, v6, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090598

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090596

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090597

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->setPadding(IIII)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090043

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v6, 0x8

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    if-eq v1, v6, :cond_0

    const/4 v5, 0x7

    if-ne v1, v5, :cond_2

    :cond_0
    if-ne v1, v6, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090598

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090596

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090597

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->setPadding(IIII)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090043

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto :goto_0
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
    .locals 4

    const v3, 0x7f090032

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    :try_start_0
    const-string v2, "floating_candidate_view_bottom_padding_size"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method protected getCandidateLeftRightGapForOneHand()I
    .locals 4

    const v3, 0x7f090419

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090418

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090417

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getCandidateLineResourceId()I
    .locals 1

    const v0, 0x7f030006

    return v0
.end method

.method protected getCandidateListLineResourceId()I
    .locals 1

    const v0, 0x7f02002d

    return v0
.end method

.method protected getExpandScrollViewRightPadding()I
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getFloatingKeyboardLeftEdge()I
    .locals 2

    :try_start_0
    const-string v1, "floating_keyboard_left_edge"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getFloatingKeyboardRightEdge()I
    .locals 2

    :try_start_0
    const-string v1, "floating_keyboard_right_edge"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHighlightTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getInputedTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getLeftPaddingSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 7

    const v6, 0x7f09002c

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    :try_start_0
    const-string v5, "split_candidate_view_width"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    return v5

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getFloatingKeyboardLeftEdge()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getFloatingKeyboardRightEdge()I

    move-result v3

    :try_start_1
    const-string v5, "floating_keyboard_width"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_1
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0
.end method

.method protected getOneHandKeyboardViewWidth()I
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09041a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09041b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPressedTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getRightPaddingSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSplitResourceId()I
    .locals 1

    const v0, 0x7f02002e

    return v0
.end method

.method protected getSuggestionFontSize()F
    .locals 4

    const v3, 0x7f090028

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :try_start_0
    const-string v2, "floating_suggestion_font_size"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_0
.end method

.method protected getSuggestionHeight()I
    .locals 4

    const v3, 0x7f090029

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :try_start_0
    const-string v2, "popup_candidate_view_height"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method protected getSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 4

    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ROBOTO_REGULAR"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "DROIDSANS"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0
.end method

.method protected getTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getTopPaddingSize()I
    .locals 4

    const v3, 0x7f090031

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    :try_start_0
    const-string v2, "floating_candidate_view_top_padding_size"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method
