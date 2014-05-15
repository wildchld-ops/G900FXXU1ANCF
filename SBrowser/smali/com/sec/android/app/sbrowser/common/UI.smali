.class public interface abstract Lcom/sec/android/app/sbrowser/common/UI;
.super Ljava/lang/Object;
.source "UI.java"


# virtual methods
.method public abstract OnDragEventDelegate(Landroid/view/DragEvent;)V
.end method

.method public abstract OnHoverEventDelegate(Landroid/view/MotionEvent;)V
.end method

.method public abstract OnScrollBegin(Z)V
.end method

.method public abstract OnScrollEnd(II)V
.end method

.method public abstract OnTouchEventDelegate(Landroid/view/MotionEvent;)V
.end method

.method public abstract OnUrlBarActive()V
.end method

.method public abstract autoHideResume()V
.end method

.method public abstract autoHideResumeSendBitmap()V
.end method

.method public abstract cancelHidingUrlBar()V
.end method

.method public abstract changeVisibiblityOfNewTabStub()V
.end method

.method public abstract checkUtilityConditionsForHideUrl()Z
.end method

.method public abstract createNewMultiWindowTab()V
.end method

.method public abstract displayTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;)V
.end method

.method public abstract findOnPage(Ljava/lang/String;)V
.end method

.method public abstract getBottomBar()Landroid/view/View;
.end method

.method public abstract getBottomBarEasymode()Landroid/view/View;
.end method

.method public abstract getBottomBarUi()Landroid/view/View;
.end method

.method public abstract getChromeViewHolder()Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;
.end method

.method public abstract getContentContainerLayout()Landroid/view/ViewGroup;
.end method

.method public abstract getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
.end method

.method public abstract getInstanceIdOnCreation(Landroid/os/Bundle;)I
.end method

.method public abstract getMainToolBarView()Landroid/view/View;
.end method

.method public abstract getPrevTabCount()I
.end method

.method public abstract getTabSwitchAnimator()Lcom/sec/android/app/sbrowser/common/TabSwitchAnimator;
.end method

.method public abstract getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;
.end method

.method public abstract getToolbarUi()Lcom/sec/android/app/sbrowser/toolbar/controller/interfaces/IToolbarUi;
.end method

.method public abstract getUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
.end method

.method public abstract hideControlsForContextualMenuBar()V
.end method

.method public abstract hidePopup()V
.end method

.method public abstract hideUrlBarWithDelay(I)V
.end method

.method public abstract inflateAndInitializeUi(Landroid/content/Context;Landroid/view/View;)V
.end method

.method public abstract initializeUI(Landroid/content/Context;)V
.end method

.method public abstract isFindTextToolbarShowing()Z
.end method

.method public abstract isQuickLaunchPageSet()Z
.end method

.method public abstract isUrlBarActive()Z
.end method

.method public abstract isUrlBookmarked()Z
.end method

.method public abstract loadOrClearPreviousState(Landroid/os/Bundle;)V
.end method

.method public abstract matchParent()V
.end method

.method public abstract multiWindowOnResume()V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
.end method

.method public abstract onContextItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onMenuKey()Z
.end method

.method public abstract onMenuOpened(ILandroid/view/Menu;)V
.end method

.method public abstract onOptionItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onRenderProcessSwap(II)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onTabClosed(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract onTabCreated(Landroid/os/Bundle;)V
.end method

.method public abstract onTabSelected(Landroid/os/Bundle;)V
.end method

.method public abstract onUrlBarBitmapUpdated()V
.end method

.method public abstract processTabManagerlaunch(Landroid/content/Context;)V
.end method

.method public abstract registerForNotification()V
.end method

.method public abstract reloadTabIfNecessary()V
.end method

.method public abstract removeTabPreview(Lcom/sec/android/app/sbrowser/multiwindow/TabManagerPreview;Z)V
.end method

.method public abstract requestWindowFeature(Landroid/content/Context;)V
.end method

.method public abstract resetTabStateOnUserDemand()V
.end method

.method public abstract setActionBarVisibility(Z)V
.end method

.method public abstract setBottombarVisibility(Z)V
.end method

.method public abstract setChromeViewHolder(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
.end method

.method public abstract setDelegateControl()V
.end method

.method public abstract setFavicon(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
.end method

.method public abstract setFullScreenMode()V
.end method

.method public abstract setStateofURL(I)V
.end method

.method public abstract setTopMarginForChromeView()V
.end method

.method public abstract setUrlBarActiveFlag(Z)V
.end method

.method public abstract showActionBar()V
.end method

.method public abstract showControlsForContextualMenuBar(Landroid/content/Context;)V
.end method

.method public abstract showQuickAccessView(Z)V
.end method

.method public abstract showQuickLaunchView(Z)V
.end method

.method public abstract toggleWindowHeight(Z)V
.end method

.method public abstract updateEasyModeLayout(I)V
.end method

.method public abstract updateLoadProgress(II)V
.end method

.method public abstract updateQuickAccessModeOnNativeFail()V
.end method

.method public abstract updateQuickLaunchMode(Ljava/lang/String;)V
.end method

.method public abstract updateSelectedView()V
.end method

.method public abstract updateUrlBarFocus(Z)V
.end method

.method public abstract updateView(I)V
.end method
