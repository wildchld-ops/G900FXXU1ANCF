.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
.super Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HANJA_MAX_DISPLAY_CANDIDATE:I = 0x64

.field private static final MAX_DISPLAY_CANDIDATE:I = 0x14


# instance fields
.field private mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

.field private mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnorePick:Z

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsBackupPadding:Z

.field protected mIsKorMode:Z

.field protected mIsPopupCandidateLayout:Z

.field private mIsSwiftKeyMode:Z

.field private mOriginLeftPadding:I

.field private mOriginRightPadding:I

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mSplitView:[Landroid/widget/TextView;

.field protected mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

.field protected mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

.field protected mXt9Version:I

.field private misLeftScrolled:Z

.field private misRightScrolled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z

    return p1
.end method

.method private initGestureDetector()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initialize()V
    .locals 9

    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    :cond_0
    new-array v3, v8, [Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    new-array v3, v7, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    new-instance v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    if-ge v1, v7, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6, v2, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initGestureDetector()V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    :cond_3
    return-void
.end method

.method private isShownExpandView(I)Z
    .locals 11

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v9, :cond_1

    move v1, v9

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v7, 0x0

    int-to-float v8, p1

    const/high16 v10, 0x4000

    div-float v4, v8, v10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v6

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v8, v8, v0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionFontSize()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    int-to-float v10, v2

    add-float/2addr v8, v10

    int-to-float v10, v6

    add-float v7, v8, v10

    cmpl-float v8, v7, v4

    if-lez v8, :cond_2

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getBackgroundResourceId()I
.end method

.method protected abstract getBottomPaddingSize()I
.end method

.method protected abstract getCandidateLeftRightGapForOneHand()I
.end method

.method protected abstract getHighlightTextColor()I
.end method

.method protected getHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-object v0
.end method

.method protected abstract getInputedTextColor()I
.end method

.method protected abstract getLeftPaddingSize()I
.end method

.method protected abstract getMaxWidth(Z)I
.end method

.method protected abstract getOneHandKeyboardViewWidth()I
.end method

.method protected abstract getPressedTextColor()I
.end method

.method protected abstract getPreviewSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getRightPaddingSize()I
.end method

.method protected abstract getSelecedBackgroundResourceId()I
.end method

.method protected abstract getSplitResourceId()I
.end method

.method protected abstract getSuggestionFontSize()F
.end method

.method protected abstract getSuggestionHeight()I
.end method

.method protected abstract getSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getTextColor()I
.end method

.method protected abstract getTopPaddingSize()I
.end method

.method protected getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_2

    move v2, v5

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    move-object v4, p1

    check-cast v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    if-eqz v4, :cond_3

    iput-boolean v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move-object v4, p1

    check-cast v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstance()Lcom/diotek/ime/framework/view/TipsDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "first_auto_replacement_tap_execution"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne v1, v5, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, p1, v5}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_9

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    if-ne v4, v8, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    if-ne v1, v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v6, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v6, v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;Z)I
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v48, "SamsungIME"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "AbstractCandidateLayout-setCandidates suggestions count : "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    const/16 v49, 0x10

    invoke-virtual/range {v48 .. v49}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    move/from16 v48, v0

    if-eqz v48, :cond_1

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v48, v0

    const-string v49, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v50, -0x1

    invoke-interface/range {v48 .. v50}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v48

    if-eqz v48, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_a

    const/16 v48, 0x4

    move/from16 v0, v48

    if-eq v7, v0, :cond_a

    const/16 v18, 0x1

    :goto_0
    if-eqz v18, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v48

    if-eqz v48, :cond_b

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v48

    if-eqz v48, :cond_c

    :cond_2
    const/16 v21, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    move/from16 v48, v0

    if-nez v48, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v48

    const-string v49, "IS_ONE_HAND_RIGHT_SET"

    const/16 v50, 0x1

    invoke-interface/range {v48 .. v50}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v48

    if-eqz v48, :cond_4

    if-eqz v24, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v31

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v17

    const/4 v9, 0x0

    const/16 v48, 0x8

    move/from16 v0, v17

    move/from16 v1, v48

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f09002e

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v48

    move/from16 v0, v48

    float-to-int v9, v0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    move/from16 v48, v0

    add-int v48, v48, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v33

    move/from16 v3, v49

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    if-eqz v48, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionFontSize()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v44

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionHeight()I

    move-result v14

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getMaxWidth(Z)I

    move-result v27

    add-int v48, v31, v32

    add-int v48, v48, v9

    sub-int v27, v27, v48

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_5

    if-gez v5, :cond_5

    const/16 v48, 0x2

    move/from16 v0, v48

    if-eq v7, v0, :cond_5

    const/4 v5, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v48, v0

    if-nez v48, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v48, v0

    if-nez v48, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v48

    if-eqz v48, :cond_7

    :cond_6
    const/16 v48, 0x2

    move/from16 v0, v48

    if-ne v7, v0, :cond_7

    const/4 v5, -0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v45

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v48 .. v49}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    const/4 v12, 0x0

    if-eqz v8, :cond_8

    instance-of v0, v8, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move/from16 v48, v0

    if-eqz v48, :cond_8

    check-cast v8, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonWidth()I

    move-result v12

    :cond_8
    sub-int v48, v27, v12

    div-int/lit8 v28, v48, 0x3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->isShownExpandView(I)Z

    move-result v48

    if-eqz v48, :cond_10

    const/16 v25, 0x1

    :goto_5
    const/16 v48, 0x2

    move/from16 v0, v48

    if-ne v7, v0, :cond_11

    const/16 v22, 0x1

    :goto_6
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v48

    if-nez v48, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aget-object v48, v48, v49

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v28, v0

    add-int/lit8 v48, v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->setCandidateWidthAndCount(II)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_13

    const/16 v15, 0x14

    :goto_8
    move/from16 v0, v39

    if-ge v15, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    if-nez v48, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    new-instance v49, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    aput-object v49, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x11

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    move/from16 v0, v39

    if-ge v15, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    new-instance v50, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v50, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v42

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v32

    goto/16 :goto_3

    :cond_e
    const/16 v48, 0x7

    move/from16 v0, v17

    move/from16 v1, v48

    if-ne v0, v1, :cond_f

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f09002d

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v48

    move/from16 v0, v48

    float-to-int v9, v0

    goto/16 :goto_4

    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_5

    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_6

    :cond_12
    add-int/lit8 v48, v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->setCandidateWidthAndCount(II)V

    goto/16 :goto_7

    :cond_13
    if-eqz v22, :cond_15

    const/16 v47, 0x0

    const/4 v15, 0x0

    :goto_9
    move/from16 v0, v39

    if-ge v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-ge v15, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v48

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v47

    move/from16 v1, v37

    if-ge v0, v1, :cond_14

    move/from16 v47, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_16

    if-lez v39, :cond_16

    const-string v48, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-virtual/range {v49 .. v50}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_16

    const/4 v5, -0x1

    :cond_16
    const/4 v15, 0x0

    :goto_a
    move/from16 v0, v39

    if-ge v15, v0, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-ge v15, v0, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_1b

    if-eqz v17, :cond_17

    const/16 v48, 0x8

    move/from16 v0, v17

    move/from16 v1, v48

    if-ne v0, v1, :cond_1b

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-gt v0, v15, :cond_19

    :cond_18
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    if-eqz v48, :cond_1a

    const-string v48, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_1c

    :cond_1a
    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    if-eqz v48, :cond_18

    :cond_1c
    if-ne v15, v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v50, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/CharSequence;

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getPressedTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setPressedTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getInputedTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setInputedTextColor(I)V

    if-nez v5, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, -0x1

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v48

    if-eqz v48, :cond_2f

    if-ne v15, v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSelecedBackgroundResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x11

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v22, :cond_30

    if-eqz v10, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v15

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v49

    sub-float v48, v48, v49

    const/high16 v49, 0x4000

    div-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    add-int v49, v26, v30

    const/16 v50, 0x0

    add-int v51, v35, v30

    const/16 v52, 0x0

    invoke-virtual/range {v48 .. v52}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_f
    const/16 v48, 0x3

    move/from16 v0, v48

    if-eq v7, v0, :cond_3b

    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v48

    if-nez v48, :cond_32

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sub-int v49, v27, v12

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v34, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v48, -0x2

    const/16 v49, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v48, 0xd

    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x13

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    const/high16 v49, 0x3f80

    add-float v48, v48, v49

    add-float v43, v43, v48

    sub-int v48, v27, v12

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v48, v43, v48

    if-lez v48, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-nez v48, :cond_1e

    if-nez v15, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v34, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v48, -0x2

    const/16 v49, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v48, 0xd

    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    :goto_11
    if-lez v15, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    if-eqz v48, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    sub-int v49, v14, v42

    sub-int v49, v49, v6

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setHeight(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_3c

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v15, v0, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_1f

    if-eqz v25, :cond_3c

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v49, v0

    add-int/lit8 v50, v15, -0x1

    aget-object v49, v49, v50

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_20
    :goto_12
    if-eqz v45, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v48

    if-eqz v48, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_3d

    const/16 v20, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_40

    move/from16 v0, v46

    if-eq v15, v0, :cond_40

    if-nez v20, :cond_40

    if-eqz v38, :cond_22

    const-string v48, " "

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_40

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_23

    if-eqz v38, :cond_23

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_23

    const/16 v48, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v48

    if-nez v48, :cond_23

    const-string v48, ".,;!?\u061b\u060c\u061f"

    const/16 v49, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_40

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-nez v48, :cond_40

    if-nez v21, :cond_40

    const/16 v23, 0x1

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_24

    const-string v48, ".,;!?\u061b\u060c\u061f"

    const/16 v49, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v48

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_3e

    const/16 v23, 0x1

    :cond_24
    :goto_14
    if-eqz v23, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    new-instance v49, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_25
    :goto_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    if-eqz v48, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v48, v0

    if-nez v48, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_41

    move/from16 v0, v46

    if-eq v15, v0, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_41

    if-nez v22, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    new-instance v49, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_26
    :goto_16
    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_42

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v5, v0, :cond_27

    if-nez v15, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const v49, 0x7f020005

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const-string v49, " "

    const-string v50, " "

    const/16 v51, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_27
    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v5, v0, :cond_28

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v15, v0, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    :cond_28
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_45

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v15, v0, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_29

    if-eqz v25, :cond_45

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    if-eqz v48, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2a
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_46

    add-int/lit8 v11, v15, 0x1

    goto/16 :goto_b

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v50, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/CharSequence;

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_c

    :cond_2c
    if-eqz v18, :cond_2e

    if-nez v15, :cond_2d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v48

    if-eqz v48, :cond_2d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_2d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v48

    if-nez v48, :cond_2d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v48

    if-nez v48, :cond_2d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v48

    if-nez v48, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_d

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, -0x1

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_d

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_d

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_e

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v26

    move/from16 v2, v49

    move/from16 v3, v35

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_f

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v49 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v49

    move/from16 v0, v49

    float-to-int v0, v0

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_10

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_38

    if-eqz v25, :cond_36

    const/16 v48, 0x4

    move/from16 v0, v48

    if-eq v7, v0, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v34, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v48, -0x2

    const/16 v49, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v48, 0xd

    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x13

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sub-int v49, v27, v12

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    sub-int v48, v27, v12

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    add-float v43, v43, v48

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v48, v43, v48

    if-gtz v48, :cond_33

    const/16 v48, 0x0

    cmpg-float v48, v43, v48

    if-gez v48, :cond_1e

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_34

    const/16 v48, 0x3

    move/from16 v0, v48

    if-le v11, v0, :cond_34

    const/4 v11, 0x3

    :cond_34
    return v11

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getPreviewSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_19

    :cond_36
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v48, v0

    add-float v43, v43, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v49 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v49

    div-float v36, v48, v49

    const/high16 v48, 0x3f80

    cmpg-float v48, v36, v48

    if-gez v48, :cond_37

    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    mul-float v50, v13, v36

    invoke-virtual/range {v48 .. v50}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_11

    :cond_37
    const/high16 v36, 0x3f80

    goto :goto_1a

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_39

    const/16 v48, 0x1

    move/from16 v0, v39

    move/from16 v1, v48

    if-ne v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sub-int v49, v27, v12

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v34, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v48, -0x2

    const/16 v49, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v48, 0xd

    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x13

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    :cond_39
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    const/high16 v49, 0x3f80

    add-float v48, v48, v49

    add-float v43, v43, v48

    sub-int v48, v27, v12

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v48, v43, v48

    if-lez v48, :cond_1e

    if-nez v15, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    new-instance v40, Ljava/lang/StringBuilder;

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v41, 0x0

    const/16 v16, 0x0

    :goto_1c
    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->length()I

    move-result v48

    move/from16 v0, v16

    move/from16 v1, v48

    if-gt v0, v1, :cond_1e

    const/16 v48, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v48, "..."

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->length()I

    move-result v48

    move-object/from16 v0, v38

    move/from16 v1, v16

    move/from16 v2, v48

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v48

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v49, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    move-object/from16 v2, v48

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    const/high16 v49, 0x3f80

    add-float v41, v48, v49

    sub-int v48, v27, v12

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    cmpg-float v48, v41, v48

    if-lez v48, :cond_1e

    add-int/lit8 v16, v16, 0x1

    goto :goto_1c

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v49 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v49

    move/from16 v0, v49

    float-to-int v0, v0

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_1b

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    const/high16 v49, 0x3f80

    add-float v48, v48, v49

    add-float v43, v43, v48

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v48, v0

    cmpg-float v48, v43, v48

    if-gez v48, :cond_1e

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v48, v0

    sub-float v48, v48, v43

    const/high16 v49, 0x4000

    div-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v26

    move/from16 v2, v49

    move/from16 v3, v35

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_11

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v49, v0

    add-int/lit8 v50, v15, -0x1

    aget-object v49, v49, v50

    invoke-virtual/range {v48 .. v49}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_12

    :cond_3d
    const/16 v20, 0x0

    goto/16 :goto_13

    :cond_3e
    const/16 v23, 0x0

    goto/16 :goto_14

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_15

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_15

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_16

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_43

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_43

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aget-object v49, v49, v50

    invoke-virtual/range {v49 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v49

    div-float v36, v48, v49

    const/high16 v48, 0x3f80

    cmpg-float v48, v36, v48

    if-gez v48, :cond_44

    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aget-object v48, v48, v49

    const/16 v49, 0x1

    mul-float v50, v13, v36

    invoke-virtual/range {v48 .. v50}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aget-object v49, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v50, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v51, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    const/16 v51, 0x0

    const/16 v52, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v48

    move/from16 v3, v51

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_43
    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v15, v0, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const v49, 0x7f020005

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const-string v49, " "

    const-string v50, " "

    const/16 v51, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_17

    :cond_44
    const/high16 v36, 0x3f80

    goto/16 :goto_1d

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    if-eqz v48, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v48 .. v49}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_18

    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b
.end method

.method public setPopupCandidateLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    return-void
.end method

.method public abstract setSuggestionSelectionBg(IZ)V
.end method
