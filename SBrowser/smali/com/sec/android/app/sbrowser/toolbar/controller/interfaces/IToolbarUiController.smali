.class public interface abstract Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUiController;
.super Ljava/lang/Object;
.source "IToolbarUiController.java"


# virtual methods
.method public abstract addSmartSuggestions()V
.end method

.method public abstract addTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V
.end method

.method public abstract clearSuggestions(Z)V
.end method

.method public abstract createToolBarViewTreeObserver(I)V
.end method

.method public abstract dismissSearchEnginePopup()V
.end method

.method public abstract displaySearchEnginePopup(Landroid/view/View;)V
.end method

.method public abstract endPrefetch()V
.end method

.method public abstract findMatchingUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract finishUrlFocusChange(Z)V
.end method

.method public abstract getActionMode()Z
.end method

.method public abstract getContentView()Lorg/chromium/content/browser/ContentView;
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/common/Tab;
.end method

.method public abstract getCurrentView()Lorg/chromium/content/browser/ContentView;
.end method

.method public abstract getDismissedSuggestionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeScreenMode()I
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSmartDB()Lcom/sec/android/app/sbrowser/solutions/ClusteredHistoryDB;
.end method

.method public abstract getSuggestionListItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/sbrowser/toolbar/ui/SuggestionListAdapter$SuggestionItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToolbarView()Landroid/view/View;
.end method

.method public abstract initAutoCompleteController()V
.end method

.method public abstract initiateVoiceSearch()V
.end method

.method public abstract invokeQuickAcessScreen(Z)V
.end method

.method public abstract isDeleteBtnClicked()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract isSuggestionComingFromVoiceSearchResult()Z
.end method

.method public abstract isToolBitmapCaptured()Z
.end method

.method public abstract isVoiceSearchInProgress()Z
.end method

.method public abstract launchBookmarkActivity()V
.end method

.method public abstract launchReaderView()V
.end method

.method public abstract loadHomePage()V
.end method

.method public abstract loadUrl(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract multiWindowOnClick()V
.end method

.method public abstract navigateBack()Z
.end method

.method public abstract navigateForward()Z
.end method

.method public abstract notifyPageStopped()V
.end method

.method public abstract notifyReaderEnabled()V
.end method

.method public abstract notifyReloadLoad()V
.end method

.method public abstract notifyTextChanged(Ljava/lang/String;)V
.end method

.method public abstract onLocationBarDestroy()V
.end method

.method public abstract onUrlFocusChange(Z)V
.end method

.method public abstract overViewOnClick(Landroid/view/View;)V
.end method

.method public abstract prefetchUrl(Ljava/lang/String;I)V
.end method

.method public abstract reloadPage()V
.end method

.method public abstract removeTextChangeListener(Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController$TextChangeListener;)V
.end method

.method public abstract resetPlaceHolderBitmap()V
.end method

.method public abstract runAutoCompleteQuery(Ljava/lang/String;)V
.end method

.method public abstract setAutoCompleteProfile()V
.end method

.method public abstract setDeleteBtnFlag(Z)V
.end method

.method public abstract setIsSuggestionComingFromVoiceSearchResult(Z)V
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setSwitchingToReader(Z)V
.end method

.method public abstract setTitleAndUrl(Landroid/view/View;)Z
.end method

.method public abstract setToolBitmapCaptured(Z)V
.end method

.method public abstract setUiType(Landroid/view/View;)V
.end method

.method public abstract showHoverPreview()V
.end method

.method public abstract showKeyBoardOnSelectSearchEngine()V
.end method

.method public abstract startAutoComplete(Ljava/lang/String;Z)V
.end method

.method public abstract stopAutoComplete(Z)V
.end method
