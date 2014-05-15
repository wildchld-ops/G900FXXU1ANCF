.class public interface abstract Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
.super Ljava/lang/Object;
.source "IToolbarController.java"


# virtual methods
.method public abstract clearDismissedSuggetionList()V
.end method

.method public abstract dismissSearchEnginePopup()V
.end method

.method public abstract getLocationBar()Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;
.end method

.method public abstract getSearchEngineController()Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
.end method

.method public abstract getToolbarController()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;
.end method

.method public abstract getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
.end method

.method public abstract getmSearchengineBaseController()Lcom/sec/android/app/sbrowser/searchengine/controller/ISearchEngineBaseController;
.end method

.method public abstract isTabSelected()Z
.end method

.method public abstract onLoadProgressChanged(Lcom/sec/android/app/sbrowser/common/Tab;I)V
.end method

.method public abstract onNativeLibraryReady()V
.end method

.method public abstract onOrientationChanged(I)V
.end method

.method public abstract onPageUrlChanged(I)V
.end method

.method public abstract onTabPrefetchCommitted()V
.end method

.method public abstract onVoiceSearchResult(Landroid/os/Bundle;)V
.end method

.method public abstract reSetDefaultPage()V
.end method

.method public abstract refreshTabCounter()V
.end method

.method public abstract setActionMode(Z)V
.end method

.method public abstract setActionModeCallbackEditText(Lcom/sec/android/app/sbrowser/mainactivity/controller/MainActivityController$URLCustomActionModeCallback;)V
.end method

.method public abstract setBingSearchEngine(Ljava/lang/String;)V
.end method

.method public abstract setBookmarkButtonClicked(Z)V
.end method

.method public abstract setControl(Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;)V
.end method

.method public abstract setOnOverviewClickHandler(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setSearchEngine()V
.end method

.method public abstract setSearchEngineFavIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTabSelected(Z)V
.end method

.method public abstract setWindowManagerIconClicked(Z)V
.end method

.method public abstract startCapturingToolBarBitmap(Z)V
.end method

.method public abstract startReaderActivity(Z)V
.end method

.method public abstract tabSelected(Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabSelectionType;)V
.end method
