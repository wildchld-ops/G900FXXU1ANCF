.class public abstract Lorg/chromium/content/browser/input/InsertionHandleController;
.super Ljava/lang/Object;
.source "InsertionHandleController.java"

# interfaces
.implements Lorg/chromium/content/browser/input/CursorController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;
    }
.end annotation


# instance fields
.field protected final ITEM_WIDTH:I

.field private mAllowAutomaticShowing:Z

.field private mContext:Landroid/content/Context;

.field private mHandle:Lorg/chromium/content/browser/input/HandleView;

.field private mIsShowing:Z

.field private mParent:Landroid/view/View;

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field public mSbrInsertionHandleController:Lorg/samsung/content/sbrowser/SbrInsertionHandleController;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x47

    iput v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->ITEM_WIDTH:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    iput-object p1, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;

    invoke-direct {v0, p0}, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;-><init>(Lorg/chromium/content/browser/input/InsertionHandleController;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mSbrInsertionHandleController:Lorg/samsung/content/sbrowser/SbrInsertionHandleController;

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/InsertionHandleController;)Lorg/chromium/content/browser/input/HandleView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/InsertionHandleController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public allowAutomaticShowing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mAllowAutomaticShowing:Z

    return-void
.end method

.method public beforeStartUpdatingPosition(Lorg/chromium/content/browser/input/HandleView;)V
    .locals 0

    return-void
.end method

.method public beginHandleFadeIn()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->beginFadeIn()V

    return-void
.end method

.method canPaste()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v1}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    goto :goto_0
.end method

.method public createHandleIfNeeded()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/chromium/content/browser/input/HandleView;-><init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mParent:Landroid/view/View;

    invoke-direct {v0, p0, v3, v1}, Lorg/chromium/content/browser/input/HandleView;-><init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    goto :goto_0
.end method

.method public getHandleViewForTest()Lorg/chromium/content/browser/input/HandleView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    return-object v0
.end method

.method getHandleX()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->getAdjustedPositionX()I

    move-result v0

    return v0
.end method

.method getHandleY()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->getAdjustedPositionY()I

    move-result v0

    return v0
.end method

.method protected abstract getLineHeight()I
.end method

.method public getSbrInsertionHandleController()Lorg/samsung/content/sbrowser/SbrInsertionHandleController;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mSbrInsertionHandleController:Lorg/samsung/content/sbrowser/SbrInsertionHandleController;

    return-object v0
.end method

.method public getSelectPopupHeight()I
    .locals 2

    iget-object v1, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x428e

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public hide()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mIsShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->hide()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mIsShowing:Z

    :cond_1
    return-void
.end method

.method public hideAndDisallowAutomaticShowing()V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mAllowAutomaticShowing:Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mIsShowing:Z

    return v0
.end method

.method public onCursorPositionChanged()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mAllowAutomaticShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showHandle()V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 0

    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController;->hide()V

    :cond_0
    return-void
.end method

.method protected abstract paste()V
.end method

.method protected abstract pasteByClipboardEx()V
.end method

.method protected abstract setCursorPosition(II)V
.end method

.method public setHandlePosition(FF)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/HandleView;->positionAt(II)V

    return-void
.end method

.method public setHandleVisibility(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    return-void
.end method

.method public showHandle()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController;->createHandleIfNeeded()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showHandleIfNeeded()V

    return-void
.end method

.method public showHandleIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mIsShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mIsShowing:Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->show()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->setHandleVisibility(I)V

    :cond_0
    return-void
.end method

.method public showHandleWithPastePopup()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showHandle()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showPastePopup()V

    return-void
.end method

.method public showPastePopup()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->showPastePopupWindow()V

    :cond_0
    return-void
.end method

.method public updatePosition(Lorg/chromium/content/browser/input/HandleView;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lorg/chromium/content/browser/input/InsertionHandleController;->setCursorPosition(II)V

    return-void
.end method
