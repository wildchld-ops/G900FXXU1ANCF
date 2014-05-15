.class public interface abstract Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
.super Ljava/lang/Object;
.source "IToolbarUi.java"


# virtual methods
.method public abstract cleanUpToolbar()V
.end method

.method public abstract clearFocus()V
.end method

.method public abstract createPopupMenu()V
.end method

.method public abstract createToolBarViewTreeObserver(I)V
.end method

.method public abstract dismissPopupMenu()V
.end method

.method public abstract enableMoreButton()V
.end method

.method public abstract getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
.end method

.method public abstract getToolbarBitmap()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
.end method

.method public abstract getUrlBar()Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;
.end method

.method public abstract hideSuggestions()V
.end method

.method public abstract initializeUiElements()V
.end method

.method public abstract invalidateSuggestionList(ZZ)V
.end method

.method public abstract invokeQuickAcessScreen(Z)V
.end method

.method public abstract isPopupMenuDismissed()Z
.end method

.method public abstract isToolBarVisible()Z
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract locationBarPost(Ljava/lang/Runnable;)V
.end method

.method public abstract notifySuggestionDataChanged()V
.end method

.method public abstract onNativeLibraryReady()V
.end method

.method public abstract onOrientationChange(I)V
.end method

.method public abstract onPageLoadFinished(ILcom/sec/android/app/sbrowser/common/Tab;)V
.end method

.method public abstract onPageLoadStarted(Landroid/os/Message;)V
.end method

.method public abstract onUrlFocusChange(Z)V
.end method

.method public abstract onUrlSelection()V
.end method

.method public abstract registerMultiwindowBtnListener()V
.end method

.method public abstract sendLocationBarPostDelayed(Ljava/lang/Runnable;I)V
.end method

.method public abstract setActionModeCallbackEditText(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;)V
.end method

.method public abstract setBookmarkBtnClickable()V
.end method

.method public abstract setBottomBarChildClicked(Z)V
.end method

.method public abstract setClickable(Z)V
.end method

.method public abstract setFavicon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setLoadProgressForplaceHolder(I)V
.end method

.method public abstract setReaderListButtonClicked(Z)V
.end method

.method public abstract setSearchEngineFavIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setSearchQuery(Ljava/lang/String;)V
.end method

.method public abstract setToolBarBackground(Z)V
.end method

.method public abstract setToolBarMainLayoutVisiblity()V
.end method

.method public abstract setUrlBarStateToNormal()V
.end method

.method public abstract setUrlToPageUrl()V
.end method

.method public abstract setVisibility(Z)V
.end method

.method public abstract showPopupMenu()V
.end method

.method public abstract startAnimationForToolbar(Landroid/view/animation/Animation;)V
.end method

.method public abstract startCapturingToolBarBitmap(Z)V
.end method

.method public abstract unregisterMultiwindowBtnListener()V
.end method

.method public abstract updateBackButtonVisibility(Z)V
.end method

.method public abstract updateCurrentTabDisplayStatus(Z)V
.end method

.method public abstract updateForwardButtonVisibility(Z)V
.end method

.method public abstract updateLoadProgress(II)V
.end method

.method public abstract updateQuickAccessMode()V
.end method

.method public abstract updateTabCountDisplay(I)V
.end method

.method public abstract updateTabLoadingState(IZZ)V
.end method

.method public abstract updateXLargeButtonStatus()V
.end method
