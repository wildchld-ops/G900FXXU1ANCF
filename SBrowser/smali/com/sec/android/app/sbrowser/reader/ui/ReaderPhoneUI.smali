.class public Lcom/sec/android/app/sbrowser/reader/ui/ReaderPhoneUI;
.super Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;
.source "ReaderPhoneUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentContainerLayout()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFindTextToolbarWrapper()Lcom/sec/android/app/sbrowser/toolbar/controller/FindTextToolbarWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstanceIdOnCreation(Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReaderToolBarHeightDimension()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/ui/ReaderBaseUI;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getToolBarUITranslationsObj()Lcom/sec/android/app/sbrowser/toolbar/ui/ToolBarUITranslations;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtilityController()Lcom/sec/android/app/sbrowser/common/QuickAccessUtilityController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadOrClearPreviousState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public processTabManagerlaunch(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setActionBarVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setBottombarVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setChromeViewHolder(Lcom/sec/android/app/sbrowser/common/SBrowserCVHolder;)V
    .locals 0

    return-void
.end method

.method public setFullScreenMode()V
    .locals 0

    return-void
.end method

.method public showQuickAccessView(Z)V
    .locals 0

    return-void
.end method

.method public updateQuickLaunchMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateSelectedView()V
    .locals 0

    return-void
.end method
