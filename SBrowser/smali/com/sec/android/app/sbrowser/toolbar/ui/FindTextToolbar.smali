.class public Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;
.super Landroid/widget/LinearLayout;
.source "FindTextToolbar.java"


# instance fields
.field private activityRootView:Landroid/view/View;

.field private fakeHint:Landroid/widget/TextView;

.field private globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mCurrentView:Lorg/chromium/content/browser/ContentView;

.field protected mFindNextButton:Landroid/widget/ImageButton;

.field protected mFindPrevButton:Landroid/widget/ImageButton;

.field private mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

.field protected mFindSearchIcon:Landroid/widget/ImageView;

.field private mFindStatus:Landroid/widget/TextView;

.field private mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

.field private mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

.field mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mSoftInputVisible:Z

.field private showKbOnceWindowfocused:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->fakeHint:Landroid/widget/TextView;

    iput-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mSoftInputVisible:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mSoftInputVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mCurrentView:Lorg/chromium/content/browser/ContentView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->showKeyboard()V

    return-void
.end method

.method private getTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V

    return-object v0
.end method

.method private showKeyboard()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->showKbOnceWindowfocused:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method


# virtual methods
.method public clearResults()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setStatus(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setPrevNextEnabled(Z)V

    return-void
.end method

.method public hideKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public hideKeyboardAndStartFinding(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mSoftInputVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->hideKeyboard(Landroid/view/View;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->fetchFindResults(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public isSoftInputVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mSoftInputVisible:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v3, 0x7f0a0135

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0134

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->setFindTextToolbar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->getTextWatcher()Landroid/text/TextWatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v3, 0x7f0a0138

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindStatus:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindStatus:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const v3, 0x7f0a0132

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindSearchIcon:Landroid/widget/ImageView;

    const v3, 0x7f0a0137

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$4;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0139

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$5;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setPrevNextEnabled(Z)V

    const v3, 0x7f0a0133

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->fakeHint:Landroid/widget/TextView;

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->showKbOnceWindowfocused:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar$6;-><init>(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public requestFindQueryFocus(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->activityRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->activityRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->requestFocus()Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->selectAll()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->showKeyboard()V

    return-void
.end method

.method public setActionModeCallbackForTextEdit(Landroid/view/ActionMode$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mCurrentView:Lorg/chromium/content/browser/ContentView;

    return-void
.end method

.method public setFindSearchIconEnabled(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindSearchIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->fakeHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->fakeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->fakeHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFindTextToolbarWrapper(Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->showKbOnceWindowfocused:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mSoftInputVisible:Z

    return-void
.end method

.method public setFocus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->requestFocus()Z

    return-void
.end method

.method public setPrevNextEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setReaderView(Lorg/chromium/content/browser/ContentView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setReaderView(Lorg/chromium/content/browser/ContentView;)V

    return-void
.end method

.method public setSoftInputVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mSoftInputVisible:Z

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->setView(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V

    return-void
.end method

.method public stopFindAndExit()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->activityRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->clearResults()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->getUiController()Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->isUrlBarActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->updateView(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;->getUi()Lcom/sec/android/app/sbrowser/common/UI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/UI;->setBottombarVisibility(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindTextToolbarWrapper:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->clearFindResults()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->mFindQuery:Lcom/sec/android/app/sbrowser/common/SoftInputOnFocusEditText;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/utilities/KeyboardUtils;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method
