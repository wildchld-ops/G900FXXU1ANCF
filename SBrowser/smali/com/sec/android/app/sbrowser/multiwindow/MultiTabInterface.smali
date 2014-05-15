.class public interface abstract Lcom/sec/android/app/sbrowser/multiwindow/MultiTabInterface;
.super Ljava/lang/Object;
.source "MultiTabInterface.java"


# virtual methods
.method public abstract addNewTabInfo(IZ)V
.end method

.method public abstract addTabView(IIIZ)V
.end method

.method public abstract bottomBarExitAnimation(IZ)V
.end method

.method public abstract closeMenu()V
.end method

.method public abstract deleteTab(Landroid/view/View;)V
.end method

.method public abstract deleteThumbnail(I)V
.end method

.method public abstract disableBackButton()V
.end method

.method public abstract disableOnlyBackButton()V
.end method

.method public abstract finishActivty()V
.end method

.method public abstract getAlltabId()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsClickDisabled()Z
.end method

.method public abstract getIsUpdateWindowListFinished()Z
.end method

.method public abstract getScreenHeight()I
.end method

.method public abstract getScreenOrientation()I
.end method

.method public abstract getScrollView()Landroid/widget/FrameLayout;
.end method

.method public abstract getScrollYPos()I
.end method

.method public abstract getStatusBarHeight()I
.end method

.method public abstract getWasTabListAnimationStarted()Z
.end method

.method public abstract getmActivity()Landroid/app/Activity;
.end method

.method public abstract getmChildList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getmCurrentTabBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getmCurrentViewingTabIndex()I
.end method

.method public abstract getmLayout()Landroid/view/ViewGroup;
.end method

.method public abstract getmMultiTabAnimations()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabAnimations;
.end method

.method public abstract getmMultiTabBrowserUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabBrowserUtils;
.end method

.method public abstract getmMultiTabOutroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabOutroUtils;
.end method

.method public abstract getmMultiTabPerspIntroUtils()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabPerspIntroUtils;
.end method

.method public abstract getmMultiTabResources()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabResources;
.end method

.method public abstract getmOperationState()Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;
.end method

.method public abstract getmPopup()Landroid/widget/PopupMenu;
.end method

.method public abstract getmScrollView()Landroid/widget/FrameLayout;
.end method

.method public abstract getmSelectedView()Landroid/view/View;
.end method

.method public abstract getmSelectedViewTabId()I
.end method

.method public abstract getmSuperView()Landroid/view/View;
.end method

.method public abstract getmTabInfos()Landroid/util/SparseBooleanArray;
.end method

.method public abstract getmUpdatedTabArray()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleNewTabCreation()V
.end method

.method public abstract handleTabDeletion(I)V
.end method

.method public abstract isActivtyDestroying()Z
.end method

.method public abstract isInSpenMode()Z
.end method

.method public abstract isMaxTabDialogEnabled()Z
.end method

.method public abstract isTabManagerInMultiWindowStatus()Z
.end method

.method public abstract ismNeedToResetOperationState()Z
.end method

.method public abstract loadBackgroundThumbnail()V
.end method

.method public abstract reCreateWindowList()V
.end method

.method public abstract resetIsMaxTabDialogEnabledFlag()V
.end method

.method public abstract sBrowserToolbarView(ZIZ)V
.end method

.method public abstract setImageViewVisible(Z)V
.end method

.method public abstract setIsEnterStackAnimationEnabled(Z)V
.end method

.method public abstract setMaxTabDialogEnabled(Z)V
.end method

.method public abstract setisClickDisabled(Z)V
.end method

.method public abstract setmFirstCreated(Z)V
.end method

.method public abstract setmNeedToResetOperationState(Z)V
.end method

.method public abstract setmOperationState(Lcom/sec/android/app/sbrowser/multiwindow/MultiTabStateInfo;)V
.end method

.method public abstract setmSelectedView(Landroid/view/View;)V
.end method

.method public abstract setmTabInfos(Landroid/util/SparseBooleanArray;)V
.end method

.method public abstract showHidePerspImageView(Z)V
.end method

.method public abstract updateCurrentTabFocus(II)V
.end method

.method public abstract updateFullScreenThumbnail(I)V
.end method

.method public abstract updateThumbnail(IZ)V
.end method
