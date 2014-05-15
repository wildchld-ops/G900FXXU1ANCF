.class public Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
.super Ljava/lang/Object;
.source "FindTextToolbarWrapper.java"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IFindTextToolbarWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentView:Lorg/chromium/content/browser/ContentView;

.field private mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

.field private mFindTextViewClickListener:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;

.field private mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

.field private mModel:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

.field private mTTS:Landroid/speech/tts/TextToSpeech;

.field mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextViewClickListener:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IFindTextToolbarWrapper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mTTS:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method


# virtual methods
.method public clearFindResults()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->clearFindResults()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->stopFindAndExit()V

    :cond_0
    return-void
.end method

.method public fetchFindResults(Ljava/lang/String;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->fetchFindResults(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public getUiController()Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    return-object v0
.end method

.method public isInReaderContext()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->mReaderview:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->isShown()Z

    move-result v0

    return v0
.end method

.method public isTalkbackOn()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public onCloseButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextViewClickListener:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextViewClickListener:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;->onCloseButtonClicked()V

    :cond_0
    return-void
.end method

.method public onFindResultReceived(Lorg/chromium/chrome/browser/FindNotificationDetails;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v6, p1, Lorg/chromium/chrome/browser/FindNotificationDetails;->numberOfMatches:I

    if-le v6, v8, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setPrevNextEnabled(Z)V

    :cond_0
    :goto_0
    iget v6, p1, Lorg/chromium/chrome/browser/FindNotificationDetails;->activeMatchOrdinal:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    iget v6, p1, Lorg/chromium/chrome/browser/FindNotificationDetails;->numberOfMatches:I

    if-ne v6, v8, :cond_3

    :cond_1
    iget-boolean v6, p1, Lorg/chromium/chrome/browser/FindNotificationDetails;->finalUpdate:Z

    if-nez v6, :cond_3

    :goto_1
    return-void

    :cond_2
    iget-boolean v6, p1, Lorg/chromium/chrome/browser/FindNotificationDetails;->finalUpdate:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setPrevNextEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, p1, Lorg/chromium/chrome/browser/FindNotificationDetails;->activeMatchOrdinal:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v6, p1, Lorg/chromium/chrome/browser/FindNotificationDetails;->numberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0c0071

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v5, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v6, 0x7f0c0072

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v5, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->isTalkbackOn()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p1, Lorg/chromium/chrome/browser/FindNotificationDetails;->finalUpdate:Z

    if-eqz v6, :cond_4

    new-instance v6, Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$1;

    invoke-direct {v8, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mTTS:Landroid/speech/tts/TextToSpeech;

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setPrevNextEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setFindSearchIconEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mCurrentView:Lorg/chromium/content/browser/ContentView;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setFindSearchIconEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    invoke-virtual {v1, v0, v3, v2}, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->fetchFindResults(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->clearResults()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->clearFindResults()V

    goto :goto_1
.end method

.method public setFindToolbar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Landroid/view/ActionMode$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setActionModeCallbackForTextEdit(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setFindTextToolbarWrapper(Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)V

    return-void
.end method

.method public setFocusToSearchInput()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setFocus()V

    return-void
.end method

.method public setModelAndFocus(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mModel:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mModel:Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setView(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->requestFindQueryFocus(Ljava/lang/String;)V

    return-void
.end method

.method public setReaderModelAndFocus(Lorg/chromium/content/browser/ContentView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setReaderView(Lorg/chromium/content/browser/ContentView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->requestFindQueryFocus(Ljava/lang/String;)V

    return-void
.end method

.method public setReaderView(Lorg/chromium/content/browser/ContentView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mCurrentView:Lorg/chromium/content/browser/ContentView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->setReaderView(Lorg/chromium/content/browser/ContentView;)V

    return-void
.end method

.method public setUiController(Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mUiController:Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;

    return-void
.end method

.method public setView(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V
    .locals 4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->index()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;->getTab(I)Lcom/sec/android/app/sbrowser/common/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/Tab;->getView()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mCurrentView:Lorg/chromium/content/browser/ContentView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mCurrentView:Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->setCurrentContentView(Lorg/chromium/content/browser/ContentView;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextToolbarModel:Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/toolbar/model/FindTextToolbarModel;->setView(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl;)V

    return-void
.end method

.method public setViewClickListener(Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindTextViewClickListener:Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper$FindTextViewClickListener;

    return-void
.end method

.method public stopFindAndExitWhenShown()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;->mFindToolbar:Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;->stopFindAndExit()V

    :cond_0
    return-void
.end method
