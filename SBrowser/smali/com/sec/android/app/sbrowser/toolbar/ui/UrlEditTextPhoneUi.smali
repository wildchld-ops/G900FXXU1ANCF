.class public Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;
.super Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;
.source "UrlEditTextPhoneUi.java"


# instance fields
.field private bUpKeyEventHandled:Z

.field private downX:F

.field private mTouchSlop:I

.field private mValidateTouchEvent:Z

.field private moveX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->bUpKeyEventHandled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->mValidateTouchEvent:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->mTouchSlop:I

    return-void
.end method

.method private handleOnTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->isUrlBarHighlighted()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/android/app/sbrowser/toolbar/controller/ToolBarController;->sActionMode:Z

    if-ne v1, v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->bUpKeyEventHandled:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->bUpKeyEventHandled:Z

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->bUpKeyEventHandled:Z

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private isUrlBarHighlighted()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->handleOnTouch(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->isUrlBarHighlighted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/SBrowserFeatureFlag;->getTabSwipeStatus()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->mValidateTouchEvent:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->mValidateTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->downX:F

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->mValidateTouchEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->moveX:F

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->downX:F

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->moveX:F

    sub-float v0, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextPhoneUi;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public performLongClick()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->isViewPagerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->mLocationbar:Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/ui/LocationBar;->isViewPagerDragging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ui/UrlEditTextBaseUi;->performLongClick()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
