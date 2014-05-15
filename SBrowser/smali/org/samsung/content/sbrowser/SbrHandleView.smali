.class public Lorg/samsung/content/sbrowser/SbrHandleView;
.super Ljava/lang/Object;
.source "SbrHandleView.java"


# static fields
.field private static final STATE_FADEIN:I = 0x1

.field private static final STATE_IDLE:I


# instance fields
.field private mAnimationDuration:J

.field private mAnimationStart:J

.field private mAnimationState:I

.field private mHandleView:Lorg/chromium/content/browser/input/HandleView;

.field public mHeight:I

.field private mParent:Landroid/view/View;

.field private mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;Lorg/chromium/content/browser/input/HandleView;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mAnimationState:I

    iput-object p5, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    iput-object p3, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mParent:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, v1, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mParent:Landroid/view/View;

    check-cast v1, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v1

    sget-object v2, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->SELECTION_HANDLES:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-virtual {v1, v2}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->setSelectionReason(Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isKikinEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, v1, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v1, v1, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mParent:Landroid/view/View;

    check-cast v1, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->isInKikinSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;->SELECTION_HANDLES:Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getKikinSelectionHandler()Lcom/kikin/content/sbrowser/KikinSelectionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kikin/content/sbrowser/KikinSelectionHandler;->getSelectionReason()Lcom/kikin/content/sbrowser/KikinSelectionHandler$SelectionReason;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->onSelectionHandleTouchUp()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startFadein()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mAnimationState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mAnimationStart:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mAnimationDuration:J

    iget-object v0, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/HandleView;->invalidate()V

    return-void
.end method

.method public updateHandler(ILandroid/graphics/drawable/Drawable;II)V
    .locals 3

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    int-to-float v2, p3

    iput v2, v1, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    int-to-float v2, p4

    iput v2, v1, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    iput-object p2, v1, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    iget-object v1, v1, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHeight:I

    iget-object v1, p0, Lorg/samsung/content/sbrowser/SbrHandleView;->mHandleView:Lorg/chromium/content/browser/input/HandleView;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/HandleView;->invalidate()V

    return-void
.end method
