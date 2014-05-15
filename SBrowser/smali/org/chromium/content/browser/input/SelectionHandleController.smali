.class public abstract Lorg/chromium/content/browser/input/SelectionHandleController;
.super Ljava/lang/Object;
.source "SelectionHandleController.java"

# interfaces
.implements Lorg/chromium/content/browser/input/CursorController;


# static fields
.field private static final TEXT_DIRECTION_DEFAULT:I = 0x0

.field private static final TEXT_DIRECTION_LTR:I = 0x1

.field private static final TEXT_DIRECTION_RTL:I = 0x2


# instance fields
.field public mAllowAutomaticShowing:Z

.field public mEndHandle:Lorg/chromium/content/browser/input/HandleView;

.field private mFixedHandleX:I

.field private mFixedHandleY:I

.field private mIsOutSideViewPort:Z

.field private mIsShowing:Z

.field private mParent:Landroid/view/View;

.field public mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

.field public mStartHandle:Lorg/chromium/content/browser/input/HandleView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsOutSideViewPort:Z

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mParent:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsOutSideViewPort:Z

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mParent:Landroid/view/View;

    new-instance v0, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;-><init>(Landroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Lorg/chromium/content/browser/input/SelectionHandleController;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    return-void
.end method


# virtual methods
.method public allowAutomaticShowing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    return-void
.end method

.method public beforeStartUpdatingPosition(Lorg/chromium/content/browser/input/HandleView;)V
    .locals 3

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    :goto_0
    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iput-object v0, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mFixedHandle:Lorg/chromium/content/browser/input/HandleView;

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->getAdjustedPositionX()I

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mFixedHandleX:I

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->getLineAdjustedPositionY()I

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mFixedHandleY:I

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    goto :goto_0
.end method

.method public beginHandleFadeIn()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->beginFadeIn()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->beginFadeIn()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->beginHandleFadeIn()V

    return-void
.end method

.method cancelFadeOutAnimation()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->hide()V

    return-void
.end method

.method public createHandlesIfNeeded(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v6, v0, :cond_3

    new-instance v3, Lorg/chromium/content/browser/input/HandleView;

    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mParent:Landroid/view/View;

    iget-object v5, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v5, v5, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-direct {v3, p0, v0, v4, v5}, Lorg/chromium/content/browser/input/HandleView;-><init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;)V

    iput-object v3, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v6, v0, :cond_6

    new-instance v0, Lorg/chromium/content/browser/input/HandleView;

    if-ne p2, v1, :cond_5

    :goto_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mParent:Landroid/view/View;

    iget-object v3, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v3, v3, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/chromium/content/browser/input/HandleView;-><init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/chromium/content/browser/input/HandleView;

    if-ne p1, v1, :cond_4

    move v0, v1

    :goto_4
    iget-object v4, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mParent:Landroid/view/View;

    invoke-direct {v3, p0, v0, v4}, Lorg/chromium/content/browser/input/HandleView;-><init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;)V

    iput-object v3, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/chromium/content/browser/input/HandleView;

    if-ne p2, v1, :cond_7

    :goto_5
    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mParent:Landroid/view/View;

    invoke-direct {v0, p0, v2, v1}, Lorg/chromium/content/browser/input/HandleView;-><init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_5
.end method

.method public getEndHandle()Lorg/chromium/content/browser/input/HandleView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    return-object v0
.end method

.method public getFixedHandleX()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mFixedHandleX:I

    return v0
.end method

.method public getFixedHandleY()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mFixedHandleY:I

    return v0
.end method

.method public getParent()Lorg/chromium/content/browser/ContentView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mParent:Landroid/view/View;

    check-cast v0, Lorg/chromium/content/browser/ContentView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    return-object v0
.end method

.method public getStartHandle()Lorg/chromium/content/browser/input/HandleView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hide()V

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->hide()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->hide()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsShowing:Z

    :cond_2
    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    :cond_3
    return-void
.end method

.method public hideAndDisallowAutomaticShowing()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    return-void
.end method

.method public isDragging()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHiddenTemporarily()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSelectionStartDragged()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsShowing:Z

    return v0
.end method

.method public onDetached()V
    .locals 0

    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mAllowAutomaticShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/SelectionHandleController;->showHandles(II)V

    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->hide()V

    :cond_0
    return-void
.end method

.method protected abstract selectBetweenCoordinates(IIII)V
.end method

.method public setEndHandlePosition(FF)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/HandleView;->positionAt(II)V

    return-void
.end method

.method public setFixedHandleX(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mFixedHandleX:I

    return-void
.end method

.method public setFixedHandleY(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mFixedHandleY:I

    return-void
.end method

.method public setHandleVisibility(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    return-void
.end method

.method public setStartHandlePosition(FF)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/HandleView;->positionAt(II)V

    return-void
.end method

.method public showHandles(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/input/SelectionHandleController;->createHandlesIfNeeded(II)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->showHandlesIfNeeded()V

    return-void
.end method

.method public showHandlesIfNeeded()V
    .locals 3

    const/16 v2, 0x12c

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsShowing:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsShowing:Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->show()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->show()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showSelectionActionPopupWindow(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->setHandleVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->isHiddenTemporarily()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showSelectionActionPopupWindow(I)V

    goto :goto_0
.end method

.method public updatePosition(Lorg/chromium/content/browser/input/HandleView;II)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v1

    if-gt p3, v1, :cond_0

    iget v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mFixedHandleX:I

    iget v2, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mFixedHandleY:I

    invoke-virtual {p0, v1, v2, p2, p3}, Lorg/chromium/content/browser/input/SelectionHandleController;->selectBetweenCoordinates(IIII)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iget-boolean v1, v1, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPix()F

    move-result v1

    float-to-int v0, v1

    if-ge p3, v0, :cond_6

    iget-boolean v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsOutSideViewPort:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getParent()Lorg/chromium/content/browser/ContentView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    float-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x0

    add-int/2addr v2, p3

    invoke-virtual {v1, p2, v2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->move(II)V

    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mStartHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mEndHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsOutSideViewPort:Z

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v1, p2, p3}, Lorg/samsung/content/sbrowser/SelectionZoomer;->show(II)V

    goto :goto_0

    :cond_6
    iput-boolean v3, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mIsOutSideViewPort:Z

    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lorg/chromium/content/browser/input/SelectionHandleController;->mSbrSelectionHandleController:Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    iget-object v1, v1, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v1}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    goto :goto_0
.end method
