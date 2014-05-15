.class public Lorg/samsung/content/sbrowser/SbrInsertionHandleController;
.super Ljava/lang/Object;
.source "SbrInsertionHandleController.java"


# instance fields
.field private mAllowAutomaticShowing:Z

.field private mHandle:Lorg/chromium/content/browser/input/HandleView;

.field private mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

.field private mIsShowing:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/InsertionHandleController;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    return-void
.end method


# virtual methods
.method public hideTemporarily()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isHiddenTemporarily()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method onCursorPositionChanged(II)V
    .locals 1

    iget-boolean v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mAllowAutomaticShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->showHandleAt(II)V

    :cond_0
    return-void
.end method

.method showHandleAt(II)V
    .locals 3

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->createHandleIfNeeded()V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/InsertionHandleController;->setHandlePosition(FF)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showHandleIfNeeded()V

    return-void
.end method

.method showHandleWithPastePopupAt(II)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->showHandleAt(II)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mInsertionHandleController:Lorg/chromium/content/browser/input/InsertionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->showPastePopup()V

    return-void
.end method

.method public undoHideTemporarily()V
    .locals 2

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrInsertionHandleController;->mHandle:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->getSbrHandleView()Lorg/samsung/content/sbrowser/SbrHandleView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrHandleView;->startFadein()V

    :cond_0
    return-void
.end method
