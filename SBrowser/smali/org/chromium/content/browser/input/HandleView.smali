.class public Lorg/chromium/content/browser/input/HandleView;
.super Landroid/view/View;
.source "HandleView.java"


# static fields
.field static final CENTER:I = 0x1

.field private static final FADE_DURATION:F = 200.0f

.field static final LEFT:I = 0x0

.field private static final LINE_OFFSET_Y_DIP:F = 5.0f

.field static final RIGHT:I = 0x2

.field private static final TEXT_VIEW_HANDLE_ATTRS:[I


# instance fields
.field private mAlpha:F

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContainerPositionX:I

.field private mContainerPositionY:I

.field public final mController:Lorg/chromium/content/browser/input/CursorController;

.field private mCurrentPositionX:I

.field private mCurrentPositionY:I

.field private mDownPositionX:F

.field private mDownPositionY:F

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFadeStartTime:J

.field public mHotspotX:F

.field public mHotspotY:F

.field private mIsDragging:Z

.field private mIsInsertionHandle:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mLastPositionX:I

.field private mLastPositionY:I

.field private mLineOffsetY:I

.field private mParentView:Landroid/view/View;

.field private mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

.field private mPositionX:I

.field private mPositionY:I

.field public mSbrHandleView:Lorg/samsung/content/sbrowser/SbrHandleView;

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

.field private final mTempCoords:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTextSelectHandleLeftRes:I

.field private final mTextSelectHandleRes:I

.field private final mTextSelectHandleRightRes:I

.field private mTouchTimer:J

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/content/browser/input/HandleView;->TEXT_VIEW_HANDLE_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xc5t 0x2t 0x1t 0x1t
        0xc7t 0x2t 0x1t 0x1t
        0xc6t 0x2t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v5, p0, Lorg/chromium/content/browser/input/HandleView;->mIsInsertionHandle:Z

    new-array v2, v7, [I

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTempCoords:[I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object p3, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    iput-object p1, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    sget-object v2, Lorg/chromium/content/browser/input/HandleView;->TEXT_VIEW_HANDLE_ATTRS:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleRes:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleRightRes:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/input/HandleView;->setOrientation(I)V

    const/high16 v2, 0x40a0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mLineOffsetY:I

    const/high16 v2, 0x3f80

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mAlpha:F

    return-void
.end method

.method protected constructor <init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;)V
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lorg/chromium/content/browser/input/HandleView;->mIsInsertionHandle:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTempCoords:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object p3, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    iput-object p1, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    iput-object p4, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const v2, 0x10102c8

    invoke-direct {v0, v7, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    sget-object v0, Lorg/chromium/content/browser/input/HandleView;->TEXT_VIEW_HANDLE_ATTRS:[I

    invoke-virtual {v7, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleRes:I

    invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleRightRes:I

    new-instance v0, Lorg/samsung/content/sbrowser/SbrHandleView;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrHandleView;-><init>(Lorg/chromium/content/browser/input/CursorController;ILandroid/view/View;Lorg/samsung/content/sbrowser/SelectionZoomer;Lorg/chromium/content/browser/input/HandleView;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSbrHandleView:Lorg/samsung/content/sbrowser/SbrHandleView;

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/input/HandleView;->setOrientation(I)V

    const/high16 v0, 0x40a0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v8, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mLineOffsetY:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mAlpha:F

    return-void
.end method

.method private isPositionVisible()Z
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v6, p0, Lorg/chromium/content/browser/input/HandleView;->mIsDragging:Z

    if-eqz v6, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v6, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    check-cast v6, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentTopControlOffset()I

    move-result v5

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTempRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    check-cast v6, Lorg/chromium/content/browser/ContentView;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentView;->getContentViewHeight()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v6, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-interface {v2, v6, v0, v9}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move v7, v8

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mTempCoords:[I

    iget-object v6, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, v1, v8

    iget v9, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionX:I

    add-int/2addr v6, v9

    iget v9, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    float-to-int v9, v9

    add-int v3, v6, v9

    aget v6, v1, v7

    iget v9, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionY:I

    add-int/2addr v6, v9

    iget v9, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    float-to-int v9, v9

    add-int v4, v6, v9

    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-lt v3, v6, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    if-gt v3, v6, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-lt v4, v6, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v6, :cond_3

    move v6, v7

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_3
    move v6, v8

    goto :goto_1
.end method

.method private updateAlpha()V
    .locals 5

    const/high16 v4, 0x3f80

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mAlpha:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/content/browser/input/HandleView;->mFadeStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x4348

    div-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mAlpha:F

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->invalidate()V

    goto :goto_0
.end method

.method private updatePosition(FF)V
    .locals 5

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetX:F

    sub-float v2, p1, v2

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    add-float v0, v2, v3

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetY:F

    sub-float v2, p2, v2

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    add-float/2addr v2, v3

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mLineOffsetY:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-interface {v2, p0, v3, v4}, Lorg/chromium/content/browser/input/CursorController;->updatePosition(Lorg/chromium/content/browser/input/HandleView;II)V

    return-void
.end method


# virtual methods
.method beginFadeIn()V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/HandleView;->mFadeStartTime:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/HandleView;->setVisibility(I)V

    goto :goto_0
.end method

.method getAdjustedPositionX()I
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method getAdjustedPositionY()I
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionY:I

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getLineAdjustedPositionY()I
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionY:I

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mLineOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPositionX()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionY:I

    return v0
.end method

.method public getSbrHandleView()Lorg/samsung/content/sbrowser/SbrHandleView;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSbrHandleView:Lorg/samsung/content/sbrowser/SbrHandleView;

    return-object v0
.end method

.method hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/HandleView;->mIsDragging:Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->hide()V

    :cond_0
    return-void
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/HandleView;->mIsDragging:Z

    return v0
.end method

.method isShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public moveTo(II)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iput p1, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionX:I

    iput p2, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionY:I

    invoke-direct {p0}, Lorg/chromium/content/browser/input/HandleView;->isPositionVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTempCoords:[I

    iget-object v3, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v2, v9

    iget v4, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionX:I

    add-int v0, v3, v4

    aget v3, v2, v10

    iget v4, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionY:I

    add-int v1, v3, v4

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionX:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionY:I

    if-eq v1, v3, :cond_1

    :cond_0
    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionX:I

    iput v1, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionY:I

    iget-object v3, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v4, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionX:I

    iget v5, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionY:I

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v3, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->hide()V

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lorg/chromium/content/browser/input/HandleView;->mIsDragging:Z

    if-eqz v3, :cond_5

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mTempCoords:[I

    iget-object v3, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_2
    aget v3, v2, v9

    iget v4, p0, Lorg/chromium/content/browser/input/HandleView;->mLastParentX:I

    if-ne v3, v4, :cond_3

    aget v3, v2, v10

    iget v4, p0, Lorg/chromium/content/browser/input/HandleView;->mLastParentY:I

    if-eq v3, v4, :cond_4

    :cond_3
    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetX:F

    aget v4, v2, v9

    iget v5, p0, Lorg/chromium/content/browser/input/HandleView;->mLastParentX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetY:F

    aget v4, v2, v10

    iget v5, p0, Lorg/chromium/content/browser/input/HandleView;->mLastParentY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetY:F

    aget v3, v2, v9

    iput v3, p0, Lorg/chromium/content/browser/input/HandleView;->mLastParentX:I

    aget v3, v2, v10

    iput v3, p0, Lorg/chromium/content/browser/input/HandleView;->mLastParentY:I

    :cond_4
    iget-object v3, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    invoke-virtual {v3}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->hide()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->show()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->hide()V

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/HandleView;->updateAlpha()V

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/HandleView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSbrHandleView:Lorg/samsung/content/sbrowser/SbrHandleView;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrHandleView;->onTouchEvent(Landroid/view/MotionEvent;)V

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_0

    iget-object v9, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v9, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->setCurrentHandle(Lorg/chromium/content/browser/input/HandleView;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDownPositionY:F

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDownPositionX:F

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetX:F

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mDownPositionY:F

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetY:F

    iget-object v6, p0, Lorg/chromium/content/browser/input/HandleView;->mTempCoords:[I

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    aget v0, v6, v1

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mLastParentX:I

    aget v0, v6, v10

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mLastParentY:I

    iput-boolean v10, p0, Lorg/chromium/content/browser/input/HandleView;->mIsDragging:Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/input/CursorController;->beforeStartUpdatingPosition(Lorg/chromium/content/browser/input/HandleView;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchTimer:J

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mLineOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionY:I

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_2

    iget-object v9, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v9, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->hideSelectionActionPopupWindow()V

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->initTextSelectionAutoScroll()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v10, v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_3

    iget-object v9, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v9, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isEditable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    iget-boolean v0, v0, Lorg/samsung/content/sbrowser/SelectionZoomer;->mbShow:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getAdjustedPositionX()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getAdjustedPositionY()I

    move-result v2

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mLineOffsetY:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->show(II)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSbrHandleView:Lorg/samsung/content/sbrowser/SbrHandleView;

    invoke-virtual {v0, p1}, Lorg/samsung/content/sbrowser/SbrHandleView;->onTouchEvent(Landroid/view/MotionEvent;)V

    move v0, v10

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v10, v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    new-array v6, v0, [I

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionX:I

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mLastPositionX:I

    iget v0, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionY:I

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mLastPositionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mLineOffsetY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionY:I

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionY:I

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getSbrContentViewCore()Lorg/samsung/content/sbrowser/SbrContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrContentViewCore;->getContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    if-gt v1, v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionX:I

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mCurrentPositionY:I

    iget v4, p0, Lorg/chromium/content/browser/input/HandleView;->mLastPositionX:I

    iget v5, p0, Lorg/chromium/content/browser/input/HandleView;->mLastPositionY:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->handleTextSelectionAutoScroll(Lorg/chromium/content/browser/input/HandleView;IIII)Z

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/HandleView;->updatePosition(FF)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_5

    iget-object v9, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v9, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->setCurrentHandle(Lorg/chromium/content/browser/input/HandleView;)V

    :cond_5
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/HandleView;->mIsInsertionHandle:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/chromium/content/browser/input/HandleView;->mTouchTimer:J

    sub-long v7, v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v7, v2

    if-gez v0, :cond_6

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->hide()V

    :cond_6
    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v10, v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_7
    iput-boolean v1, p0, Lorg/chromium/content/browser/input/HandleView;->mIsDragging:Z

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getHandleCrossing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->setHandleCrossing(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->show()V

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v10, v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_3

    iget-object v9, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v9, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->showSelectionActionPopupWindow(I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->showPastePopupWindow()V

    goto :goto_2

    :pswitch_3
    iput-boolean v1, p0, Lorg/chromium/content/browser/input/HandleView;->mIsDragging:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v0

    if-ne v10, v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_a
    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v0, v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->getHandleCrossing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->setHandleCrossing(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/SelectionHandleController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectionHandleController;->getSbrSelectionHandleController()Lorg/samsung/content/sbrowser/SbrSelectionHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/samsung/content/sbrowser/SbrSelectionHandleController;->show()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method positionAt(II)V
    .locals 3

    int-to-float v0, p1

    iget v1, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p2

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/HandleView;->moveTo(II)V

    return-void
.end method

.method setOrientation(I)V
    .locals 6

    const/high16 v5, 0x4080

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    instance-of v2, v2, Lorg/chromium/content/browser/input/SelectionHandleController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectionZoomer:Lorg/samsung/content/sbrowser/SelectionZoomer;

    invoke-virtual {v2}, Lorg/samsung/content/sbrowser/SelectionZoomer;->hide()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    iput-boolean v4, p0, Lorg/chromium/content/browser/input/HandleView;->mIsInsertionHandle:Z

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getSbrContentViewFlag()Z

    move-result v2

    if-ne v4, v2, :cond_2

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSbrHandleView:Lorg/samsung/content/sbrowser/SbrHandleView;

    iput v0, v2, Lorg/samsung/content/sbrowser/SbrHandleView;->mHeight:I

    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotY:F

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->invalidate()V

    return-void

    :pswitch_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/lit8 v2, v1, 0x3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mTextSelectHandleRightRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v5

    iput v2, p0, Lorg/chromium/content/browser/input/HandleView;->mHotspotX:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method show()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/HandleView;->isPositionVisible()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/HandleView;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mTempCoords:[I

    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v0, v5

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionX:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iget v2, p0, Lorg/chromium/content/browser/input/HandleView;->mPositionY:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionY:I

    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/chromium/content/browser/input/HandleView;->mParentView:Landroid/view/View;

    iget v3, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionX:I

    iget v4, p0, Lorg/chromium/content/browser/input/HandleView;->mContainerPositionY:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->hide()V

    goto :goto_0
.end method

.method showPastePopupWindow()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/HandleView;->mController:Lorg/chromium/content/browser/input/CursorController;

    check-cast v0, Lorg/chromium/content/browser/input/InsertionHandleController;

    iget-boolean v1, p0, Lorg/chromium/content/browser/input/HandleView;->mIsInsertionHandle:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InsertionHandleController;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    if-nez v1, :cond_0

    new-instance v1, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;-><init>(Lorg/chromium/content/browser/input/InsertionHandleController;)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/HandleView;->mPastePopupWindow:Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/InsertionHandleController$PastePopupMenu;->show()V

    :cond_1
    return-void
.end method
