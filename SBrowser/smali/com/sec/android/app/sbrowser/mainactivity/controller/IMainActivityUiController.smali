.class public interface abstract Lcom/sec/android/app/sbrowser/mainactivity/controller/IMainActivityUiController;
.super Ljava/lang/Object;
.source "IMainActivityUiController.java"


# virtual methods
.method public abstract DisplayTabPreview()V
.end method

.method public abstract addBookmark()V
.end method

.method public abstract addBookmarkFromPinned(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addShortcut(Lorg/chromium/content/browser/ContentView;)V
.end method

.method public abstract captureThumbnail()Landroid/graphics/Bitmap;
.end method

.method public abstract changeToIncognitoMode(Lorg/chromium/content/browser/ContentView;)V
.end method

.method public abstract checkMultiTabOnResume()V
.end method

.method public abstract clearCurrentTabHistory()V
.end method

.method public abstract closeAllTabs()V
.end method

.method public abstract closeCurrentTab()V
.end method

.method public abstract createNewMultiWindowTab()V
.end method

.method public abstract createNewWindow()V
.end method

.method public abstract createNewWindowWithURL()V
.end method

.method public abstract createToolBarViewTreeObserver(I)V
.end method

.method public abstract displayMaximumTabsBeforeOtherInstanceTabsRestoreAlertDialog()V
.end method

.method public abstract exit()V
.end method

.method public abstract findOnPage(Ljava/lang/String;)V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
.end method

.method public abstract getControl()Lcom/sec/android/app/sbrowser/common/ContentViewListAdapter;
.end method

.method public abstract getControllerPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getEasyModeFlag()Z
.end method

.method public abstract getFullScreenManager()Lcom/sec/android/app/sbrowser/common/ContentFullScreenManager;
.end method

.method public abstract getInstanceIndex()I
.end method

.method public abstract getIsMobilePrintAvailable()Z
.end method

.method public abstract getMobileContext()Lcom/sec/android/app/sbrowser/common/SBrowserMobileApplication;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSettings()Lcom/sec/android/app/sbrowser/preferences/SbrowserSettings;
.end method

.method public abstract getTabPreview()Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;
.end method

.method public abstract getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
.end method

.method public abstract getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
.end method

.method public abstract getUi()Lcom/sec/android/app/sbrowser/common/UI;
.end method

.method public abstract getWindowMode()I
.end method

.method public abstract gotoHistory()V
.end method

.method public abstract gotohomepage()V
.end method

.method public abstract isBookMarkShown()Z
.end method

.method public abstract isDBThumbnailLoaded()Z
.end method

.method public abstract isMaxTabLimitReached()Z
.end method

.method public abstract isMultiWindowRunning()Z
.end method

.method public abstract isQuickLaunchPageSet()Z
.end method

.method public abstract isSMultiWindow()Z
.end method

.method public abstract isSmallWindowApplicable()Z
.end method

.method public abstract isTabSwipeActive()Z
.end method

.method public abstract isUrlBarActive()Z
.end method

.method public abstract isViewPagerDragging()Z
.end method

.method public abstract launchHelp()V
.end method

.method public abstract loadLibrary()V
.end method

.method public abstract newIncognitoTab()V
.end method

.method public abstract openImageInNewTab(Ljava/lang/String;)V
.end method

.method public abstract openIncognitoModeTab(Ljava/lang/String;)V
.end method

.method public abstract openUrlInCurrentModel(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/SBrowserTabControl$TabLaunchType;)V
.end method

.method public abstract print()V
.end method

.method public abstract queryCurrentActionBarHeight()I
.end method

.method public abstract readLater(Z)V
.end method

.method public abstract readerTranslate()V
.end method

.method public abstract registerActionModeCallBacks(Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarController;)V
.end method

.method public abstract registerEnableAnimationsNotification()V
.end method

.method public abstract reloadTabIfNecessary(Z)V
.end method

.method public abstract removeTabPreview(Z)V
.end method

.method public abstract resetExtractSummary()V
.end method

.method public abstract setBookMarkVisibility(Z)V
.end method

.method public abstract setBrightness()V
.end method

.method public abstract setEasyModeFlag(Z)V
.end method

.method public abstract setFindToolBar(Lcom/sec/android/app/sbrowser/toolbar/ui/FindTextToolbar;Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;)V
.end method

.method public abstract setFontScaleFactor()V
.end method

.method public abstract setHideUrlBarListener()V
.end method

.method public abstract setHideUrlBarListener(Lorg/chromium/content/browser/ContentView;)V
.end method

.method public abstract setStateofURL(I)V
.end method

.method public abstract setTabMangerActiveStatus(Z)V
.end method

.method public abstract setTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V
.end method

.method public abstract setUrlBarActive(ZZ)V
.end method

.method public abstract setUrlBarActiveFlag(Z)V
.end method

.method public abstract setUrlBarBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setUrlBarHidden(Z)V
.end method

.method public abstract settings()V
.end method

.method public abstract shareUrl(Lorg/chromium/content/browser/ContentView;)V
.end method

.method public abstract showDesktopView()V
.end method

.method public abstract startPrint()V
.end method

.method public abstract syncTabs()V
.end method

.method public abstract updateUrlBarFocus(Z)V
.end method

.method public abstract updateView(I)V
.end method
